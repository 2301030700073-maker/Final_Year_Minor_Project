.class public final Landroidx/glance/state/GlanceState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Landroidx/glance/state/GlanceState;

.field public static final dataStores:Ljava/util/LinkedHashMap;

.field public static final mutex:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/glance/state/GlanceState;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/state/GlanceState;->INSTANCE:Landroidx/glance/state/GlanceState;

    .line 7
    .line 8
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 9
    .line 10
    invoke-direct {v0}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/glance/state/GlanceState;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/glance/state/GlanceState;->dataStores:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final deleteStore(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Landroidx/glance/state/GlanceState$deleteStore$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/glance/state/GlanceState$deleteStore$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->label:I

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
    iput v1, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/state/GlanceState$deleteStore$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Landroidx/glance/state/GlanceState$deleteStore$1;-><init>(Landroidx/glance/state/GlanceState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    iget-object p1, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->L$3:Lkotlinx/coroutines/sync/MutexImpl;

    .line 38
    .line 39
    iget-object p3, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->L$2:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p2, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->L$1:Landroidx/glance/state/GlanceStateDefinition;

    .line 42
    .line 43
    iget-object p4, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->L$0:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move-object p0, p1

    .line 49
    move-object p1, p4

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v3

    .line 57
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->L$0:Landroid/content/Context;

    .line 61
    .line 62
    iput-object p2, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->L$1:Landroidx/glance/state/GlanceStateDefinition;

    .line 63
    .line 64
    iput-object p3, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->L$2:Ljava/lang/String;

    .line 65
    .line 66
    sget-object p0, Landroidx/glance/state/GlanceState;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 67
    .line 68
    iput-object p0, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->L$3:Lkotlinx/coroutines/sync/MutexImpl;

    .line 69
    .line 70
    iput v2, v0, Landroidx/glance/state/GlanceState$deleteStore$1;->label:I

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-ne v0, p4, :cond_3

    .line 77
    .line 78
    return-object p4

    .line 79
    :cond_3
    :goto_1
    :try_start_0
    sget-object p4, Landroidx/glance/state/GlanceState;->dataStores:Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    invoke-interface {p4, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p1, p3}, Landroidx/glance/state/GlanceStateDefinition;->getLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    invoke-interface {p0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p0

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    invoke-interface {p0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public final getDataStore(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p4, Landroidx/glance/state/GlanceState$getDataStore$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/glance/state/GlanceState$getDataStore$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->label:I

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
    iput v1, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/state/GlanceState$getDataStore$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Landroidx/glance/state/GlanceState$getDataStore$1;-><init>(Landroidx/glance/state/GlanceState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$2:Ljava/io/Serializable;

    .line 41
    .line 42
    check-cast p1, Ljava/util/Map;

    .line 43
    .line 44
    iget-object p2, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p2, Lkotlinx/coroutines/sync/Mutex;

    .line 47
    .line 48
    iget-object p3, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p3, Ljava/lang/String;

    .line 51
    .line 52
    :try_start_0
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v4

    .line 65
    :cond_2
    iget-object p1, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$3:Lkotlinx/coroutines/sync/MutexImpl;

    .line 66
    .line 67
    iget-object p2, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$2:Ljava/io/Serializable;

    .line 68
    .line 69
    move-object p3, p2

    .line 70
    check-cast p3, Ljava/lang/String;

    .line 71
    .line 72
    iget-object p2, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$1:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p2, Landroidx/glance/state/GlanceStateDefinition;

    .line 75
    .line 76
    iget-object v1, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p0, p1

    .line 84
    move-object p1, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iput-object p1, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput-object p2, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object p3, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$2:Ljava/io/Serializable;

    .line 94
    .line 95
    sget-object p0, Landroidx/glance/state/GlanceState;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 96
    .line 97
    iput-object p0, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$3:Lkotlinx/coroutines/sync/MutexImpl;

    .line 98
    .line 99
    iput v3, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->label:I

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-ne v1, p4, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    :goto_1
    :try_start_1
    sget-object v1, Landroidx/glance/state/GlanceState;->dataStores:Ljava/util/LinkedHashMap;

    .line 109
    .line 110
    invoke-virtual {v1, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-nez v3, :cond_6

    .line 115
    .line 116
    iput-object p3, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object p0, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object v1, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$2:Ljava/io/Serializable;

    .line 121
    .line 122
    iput-object v4, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->L$3:Lkotlinx/coroutines/sync/MutexImpl;

    .line 123
    .line 124
    iput v2, v0, Landroidx/glance/state/GlanceState$getDataStore$1;->label:I

    .line 125
    .line 126
    invoke-interface {p2, p1, p3}, Landroidx/glance/state/GlanceStateDefinition;->getDataStore(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    if-ne p1, p4, :cond_5

    .line 131
    .line 132
    :goto_2
    return-object p4

    .line 133
    :cond_5
    move-object p2, p0

    .line 134
    move-object p0, p1

    .line 135
    move-object p1, v1

    .line 136
    :goto_3
    :try_start_2
    move-object v3, p0

    .line 137
    check-cast v3, Landroidx/datastore/core/DataStore;

    .line 138
    .line 139
    invoke-interface {p1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :catchall_1
    move-exception p1

    .line 144
    move-object p2, p0

    .line 145
    move-object p0, p1

    .line 146
    goto :goto_5

    .line 147
    :cond_6
    move-object p2, p0

    .line 148
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    check-cast v3, Landroidx/datastore/core/DataStore;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .line 153
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-object v3

    .line 157
    :goto_5
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method public final getValue(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p4, Landroidx/glance/state/GlanceState$getValue$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/glance/state/GlanceState$getValue$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/glance/state/GlanceState$getValue$1;->label:I

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
    iput v1, v0, Landroidx/glance/state/GlanceState$getValue$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/state/GlanceState$getValue$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Landroidx/glance/state/GlanceState$getValue$1;-><init>(Landroidx/glance/state/GlanceState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Landroidx/glance/state/GlanceState$getValue$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/glance/state/GlanceState$getValue$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    if-eq v2, v4, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object p4

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput v4, v0, Landroidx/glance/state/GlanceState$getValue$1;->label:I

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/glance/state/GlanceState;->getDataStore(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    if-ne p4, v1, :cond_4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    :goto_1
    check-cast p4, Landroidx/datastore/core/DataStore;

    .line 67
    .line 68
    invoke-interface {p4}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iput v3, v0, Landroidx/glance/state/GlanceState$getValue$1;->label:I

    .line 73
    .line 74
    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/StateFlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-ne p0, v1, :cond_5

    .line 79
    .line 80
    :goto_2
    return-object v1

    .line 81
    :cond_5
    return-object p0
.end method

.method public final updateValue(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p5, Landroidx/glance/state/GlanceState$updateValue$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Landroidx/glance/state/GlanceState$updateValue$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/glance/state/GlanceState$updateValue$1;->label:I

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
    iput v1, v0, Landroidx/glance/state/GlanceState$updateValue$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/state/GlanceState$updateValue$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Landroidx/glance/state/GlanceState$updateValue$1;-><init>(Landroidx/glance/state/GlanceState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Landroidx/glance/state/GlanceState$updateValue$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/glance/state/GlanceState$updateValue$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p5

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_2
    iget-object p4, v0, Landroidx/glance/state/GlanceState$updateValue$1;->L$0:Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 51
    .line 52
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object p4, v0, Landroidx/glance/state/GlanceState$updateValue$1;->L$0:Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 60
    .line 61
    iput v5, v0, Landroidx/glance/state/GlanceState$updateValue$1;->label:I

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/glance/state/GlanceState;->getDataStore(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p5

    .line 67
    if-ne p5, v1, :cond_4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    :goto_1
    check-cast p5, Landroidx/datastore/core/DataStore;

    .line 71
    .line 72
    iput-object v3, v0, Landroidx/glance/state/GlanceState$updateValue$1;->L$0:Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 73
    .line 74
    iput v4, v0, Landroidx/glance/state/GlanceState$updateValue$1;->label:I

    .line 75
    .line 76
    invoke-interface {p5, p4, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-ne p0, v1, :cond_5

    .line 81
    .line 82
    :goto_2
    return-object v1

    .line 83
    :cond_5
    return-object p0
.end method
