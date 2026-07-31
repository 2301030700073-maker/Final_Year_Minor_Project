.class public final Landroidx/room/coroutines/ConnectionPoolImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field public final _isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final readers:Landroidx/room/coroutines/Pool;

.field public final threadLocal:Ljava/lang/ThreadLocal;

.field public final timeout:J

.field public final writers:Landroidx/room/coroutines/Pool;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/WeakCache;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x1e

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 73
    new-instance v0, Landroidx/room/coroutines/Pool;

    new-instance v1, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p1}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 74
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/WeakCache;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 23
    .line 24
    const/16 v0, 0x1e

    .line 25
    .line 26
    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    iput-wide v2, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 33
    .line 34
    if-lez p3, :cond_0

    .line 35
    .line 36
    new-instance v0, Landroidx/room/coroutines/Pool;

    .line 37
    .line 38
    new-instance v2, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v2, p1, p2, v1}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/platform/WeakCache;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p3, v2}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 47
    .line 48
    new-instance p3, Landroidx/room/coroutines/Pool;

    .line 49
    .line 50
    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-direct {v0, p1, p2, v1}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/platform/WeakCache;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p3, v1, v0}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    iput-object p3, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    const-string p0, "Maximum number of readers must be greater than 0"

    .line 63
    .line 64
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/room/coroutines/Pool;->close()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/room/coroutines/Pool;->close()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final throwTimeoutException(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "reader"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string/jumbo p1, "writer"

    .line 7
    .line 8
    .line 9
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Timed out attempting to acquire a "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " connection."

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "\n\nWriter pool:\n"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroidx/room/coroutines/Pool;->dump(Ljava/lang/StringBuilder;)V

    .line 44
    .line 45
    .line 46
    const-string p1, "Reader pool:"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 p1, 0xa

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/room/coroutines/Pool;->dump(Ljava/lang/StringBuilder;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/4 p1, 0x5

    .line 66
    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    throw p0
.end method

.method public final useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    instance-of v4, v0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    check-cast v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 15
    .line 16
    iget v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 29
    .line 30
    invoke-direct {v4, v1, v0}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;-><init>(Landroidx/room/coroutines/ConnectionPoolImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    iget v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 36
    .line 37
    const-string v6, "ROLLBACK TRANSACTION"

    .line 38
    .line 39
    const/4 v8, 0x4

    .line 40
    const/4 v9, 0x3

    .line 41
    const/4 v10, 0x2

    .line 42
    const/4 v11, 0x1

    .line 43
    const/4 v12, 0x0

    .line 44
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 45
    .line 46
    if-eqz v5, :cond_5

    .line 47
    .line 48
    if-eq v5, v11, :cond_4

    .line 49
    .line 50
    if-eq v5, v10, :cond_3

    .line 51
    .line 52
    if-eq v5, v9, :cond_2

    .line 53
    .line 54
    if-ne v5, v8, :cond_1

    .line 55
    .line 56
    iget-object v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/io/Serializable;

    .line 57
    .line 58
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    iget-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Landroidx/room/coroutines/Pool;

    .line 63
    .line 64
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto/16 :goto_d

    .line 68
    .line 69
    :catchall_0
    move-exception v0

    .line 70
    move-object v10, v1

    .line 71
    :goto_1
    move-object v1, v0

    .line 72
    goto/16 :goto_e

    .line 73
    .line 74
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v12

    .line 80
    :cond_2
    iget-boolean v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .line 81
    .line 82
    iget-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 83
    .line 84
    iget-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Lkotlin/coroutines/CoroutineContext;

    .line 85
    .line 86
    iget-object v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 87
    .line 88
    iget-object v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Landroidx/room/coroutines/Pool;

    .line 89
    .line 90
    iget-object v10, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/io/Serializable;

    .line 91
    .line 92
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 93
    .line 94
    iget-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v14, Landroidx/room/coroutines/ConnectionPoolImpl;

    .line 97
    .line 98
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .line 100
    .line 101
    move-object v0, v3

    .line 102
    move-object v3, v10

    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :catchall_1
    move-exception v0

    .line 106
    move-object v15, v2

    .line 107
    move v2, v1

    .line 108
    move-object v1, v14

    .line 109
    move-object v14, v3

    .line 110
    move-object v3, v10

    .line 111
    goto/16 :goto_8

    .line 112
    .line 113
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_1b

    .line 131
    .line 132
    iget-object v0, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 139
    .line 140
    sget-object v14, Landroidx/room/coroutines/ConnectionElement;->Key:Lokio/Path$Companion;

    .line 141
    .line 142
    if-nez v5, :cond_7

    .line 143
    .line 144
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-interface {v5, v14}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Landroidx/room/coroutines/ConnectionElement;

    .line 153
    .line 154
    if-eqz v5, :cond_6

    .line 155
    .line 156
    iget-object v5, v5, Landroidx/room/coroutines/ConnectionElement;->connectionWrapper:Landroidx/room/coroutines/PooledConnectionImpl;

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    move-object v5, v12

    .line 160
    :cond_7
    :goto_2
    if-eqz v5, :cond_d

    .line 161
    .line 162
    if-nez v2, :cond_9

    .line 163
    .line 164
    iget-boolean v1, v5, Landroidx/room/coroutines/PooledConnectionImpl;->isReadOnly:Z

    .line 165
    .line 166
    if-nez v1, :cond_8

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_8
    const-string v0, "Cannot upgrade connection from reader to writer"

    .line 170
    .line 171
    invoke-static {v0, v11}, Landroidx/sqlite/SQLite;->throwSQLiteException(Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    throw v12

    .line 175
    :cond_9
    :goto_3
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {v1, v14}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-nez v1, :cond_b

    .line 184
    .line 185
    new-instance v1, Landroidx/room/coroutines/ConnectionElement;

    .line 186
    .line 187
    invoke-direct {v1, v5}, Landroidx/room/coroutines/ConnectionElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    new-instance v2, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 194
    .line 195
    invoke-direct {v2, v5, v0}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;Ljava/lang/ThreadLocal;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v1, v2}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    new-instance v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 203
    .line 204
    const/16 v2, 0x10

    .line 205
    .line 206
    invoke-direct {v1, v3, v5, v12, v2}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 207
    .line 208
    .line 209
    iput v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 210
    .line 211
    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-ne v0, v13, :cond_a

    .line 216
    .line 217
    goto/16 :goto_c

    .line 218
    .line 219
    :cond_a
    return-object v0

    .line 220
    :cond_b
    iput v10, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 221
    .line 222
    invoke-interface {v3, v5, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-ne v0, v13, :cond_c

    .line 227
    .line 228
    goto/16 :goto_c

    .line 229
    .line 230
    :cond_c
    return-object v0

    .line 231
    :cond_d
    if-eqz v2, :cond_e

    .line 232
    .line 233
    iget-object v0, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 234
    .line 235
    :goto_4
    move-object v5, v0

    .line 236
    goto :goto_5

    .line 237
    :cond_e
    iget-object v0, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :goto_5
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 241
    .line 242
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 243
    .line 244
    .line 245
    :try_start_2
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 250
    .line 251
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 252
    .line 253
    .line 254
    :try_start_3
    iget-wide v7, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 255
    .line 256
    new-instance v0, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 257
    .line 258
    const/4 v11, 0x7

    .line 259
    invoke-direct {v0, v15, v5, v12, v11}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 260
    .line 261
    .line 262
    iput-object v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 263
    .line 264
    move-object v11, v3

    .line 265
    check-cast v11, Ljava/io/Serializable;

    .line 266
    .line 267
    iput-object v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/io/Serializable;

    .line 268
    .line 269
    iput-object v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Landroidx/room/coroutines/Pool;

    .line 270
    .line 271
    iput-object v10, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 272
    .line 273
    iput-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Lkotlin/coroutines/CoroutineContext;

    .line 274
    .line 275
    iput-object v15, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 276
    .line 277
    iput-boolean v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .line 278
    .line 279
    iput v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 280
    .line 281
    invoke-static {v7, v8}, Lkotlinx/coroutines/JobKt;->toDelayMillis-LRDsOJo(J)J

    .line 282
    .line 283
    .line 284
    move-result-wide v7

    .line 285
    const-wide/16 v16, 0x0

    .line 286
    .line 287
    cmp-long v9, v7, v16

    .line 288
    .line 289
    if-lez v9, :cond_10

    .line 290
    .line 291
    new-instance v9, Lkotlinx/coroutines/TimeoutCoroutine;

    .line 292
    .line 293
    invoke-direct {v9, v7, v8, v4}, Lkotlinx/coroutines/TimeoutCoroutine;-><init>(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v9, v0}, Lkotlinx/coroutines/JobKt;->setupTimeout(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    if-ne v0, v13, :cond_f

    .line 301
    .line 302
    goto/16 :goto_c

    .line 303
    .line 304
    :cond_f
    move-object v9, v5

    .line 305
    move-object v5, v10

    .line 306
    move-object v0, v14

    .line 307
    move-object v14, v1

    .line 308
    move v1, v2

    .line 309
    move-object v2, v15

    .line 310
    :goto_6
    move-object v15, v2

    .line 311
    move v2, v1

    .line 312
    move-object v1, v5

    .line 313
    move-object v5, v14

    .line 314
    move-object v14, v0

    .line 315
    move-object v0, v12

    .line 316
    goto :goto_9

    .line 317
    :cond_10
    new-instance v0, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 318
    .line 319
    const-string v7, "Timed out immediately"

    .line 320
    .line 321
    invoke-direct {v0, v7, v12}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lkotlinx/coroutines/TimeoutCoroutine;)V

    .line 322
    .line 323
    .line 324
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 325
    :goto_7
    move-object v9, v5

    .line 326
    move-object v5, v10

    .line 327
    goto :goto_8

    .line 328
    :catchall_2
    move-exception v0

    .line 329
    goto :goto_7

    .line 330
    :goto_8
    move-object/from16 v18, v5

    .line 331
    .line 332
    move-object v5, v1

    .line 333
    move-object/from16 v1, v18

    .line 334
    .line 335
    :goto_9
    :try_start_4
    iget-object v7, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v7, Landroidx/room/coroutines/ConnectionWithLock;

    .line 338
    .line 339
    if-eqz v7, :cond_12

    .line 340
    .line 341
    new-instance v8, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 342
    .line 343
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    iput-object v14, v7, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 347
    .line 348
    new-instance v10, Ljava/lang/Throwable;

    .line 349
    .line 350
    invoke-direct {v10}, Ljava/lang/Throwable;-><init>()V

    .line 351
    .line 352
    .line 353
    iput-object v10, v7, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 354
    .line 355
    iget-object v10, v5, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 356
    .line 357
    iget-object v11, v5, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 358
    .line 359
    if-eq v10, v11, :cond_11

    .line 360
    .line 361
    if-eqz v2, :cond_11

    .line 362
    .line 363
    const/4 v10, 0x1

    .line 364
    goto :goto_a

    .line 365
    :cond_11
    const/4 v10, 0x0

    .line 366
    :goto_a
    invoke-direct {v8, v7, v10}, Landroidx/room/coroutines/PooledConnectionImpl;-><init>(Landroidx/room/coroutines/ConnectionWithLock;Z)V

    .line 367
    .line 368
    .line 369
    goto :goto_b

    .line 370
    :catchall_3
    move-exception v0

    .line 371
    move-object v10, v1

    .line 372
    move-object v2, v9

    .line 373
    goto/16 :goto_1

    .line 374
    .line 375
    :cond_12
    move-object v8, v12

    .line 376
    :goto_b
    iput-object v8, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 377
    .line 378
    instance-of v7, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 379
    .line 380
    if-nez v7, :cond_18

    .line 381
    .line 382
    if-nez v0, :cond_17

    .line 383
    .line 384
    if-eqz v8, :cond_16

    .line 385
    .line 386
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    new-instance v0, Landroidx/room/coroutines/ConnectionElement;

    .line 390
    .line 391
    invoke-direct {v0, v8}, Landroidx/room/coroutines/ConnectionElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;)V

    .line 392
    .line 393
    .line 394
    iget-object v2, v5, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    new-instance v5, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 400
    .line 401
    invoke-direct {v5, v8, v2}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;Ljava/lang/ThreadLocal;)V

    .line 402
    .line 403
    .line 404
    invoke-static {v0, v5}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    new-instance v2, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 409
    .line 410
    const/16 v5, 0x11

    .line 411
    .line 412
    invoke-direct {v2, v3, v1, v12, v5}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 413
    .line 414
    .line 415
    iput-object v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 416
    .line 417
    iput-object v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/io/Serializable;

    .line 418
    .line 419
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Landroidx/room/coroutines/Pool;

    .line 420
    .line 421
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 422
    .line 423
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Lkotlin/coroutines/CoroutineContext;

    .line 424
    .line 425
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 426
    .line 427
    const/4 v3, 0x4

    .line 428
    iput v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 429
    .line 430
    invoke-static {v0, v2, v4}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 434
    if-ne v0, v13, :cond_13

    .line 435
    .line 436
    :goto_c
    return-object v13

    .line 437
    :cond_13
    move-object v2, v9

    .line 438
    :goto_d
    :try_start_5
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v1, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 441
    .line 442
    if-eqz v1, :cond_15

    .line 443
    .line 444
    iget-object v3, v1, Landroidx/room/coroutines/PooledConnectionImpl;->_isRecycled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 445
    .line 446
    const/4 v4, 0x0

    .line 447
    const/4 v5, 0x1

    .line 448
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 449
    .line 450
    .line 451
    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 452
    if-eqz v3, :cond_14

    .line 453
    .line 454
    :try_start_6
    iget-object v3, v1, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 455
    .line 456
    invoke-static {v3, v6}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 457
    .line 458
    .line 459
    :catch_0
    :cond_14
    :try_start_7
    iget-object v1, v1, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 460
    .line 461
    iput-object v12, v1, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 462
    .line 463
    iput-object v12, v1, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 464
    .line 465
    invoke-virtual {v2, v1}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 466
    .line 467
    .line 468
    :catchall_4
    :cond_15
    return-object v0

    .line 469
    :cond_16
    :try_start_8
    const-string v0, "Required value was null."

    .line 470
    .line 471
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 472
    .line 473
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw v2

    .line 477
    :cond_17
    throw v0

    .line 478
    :cond_18
    invoke-virtual {v5, v2}, Landroidx/room/coroutines/ConnectionPoolImpl;->throwTimeoutException(Z)V

    .line 479
    .line 480
    .line 481
    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 482
    :catchall_5
    move-exception v0

    .line 483
    move-object v1, v0

    .line 484
    move-object v2, v5

    .line 485
    :goto_e
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 486
    :catchall_6
    move-exception v0

    .line 487
    move-object v3, v0

    .line 488
    :try_start_a
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 491
    .line 492
    if-eqz v0, :cond_1a

    .line 493
    .line 494
    iget-object v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->_isRecycled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 495
    .line 496
    const/4 v5, 0x0

    .line 497
    const/4 v7, 0x1

    .line 498
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 499
    .line 500
    .line 501
    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 502
    if-eqz v4, :cond_19

    .line 503
    .line 504
    :try_start_b
    iget-object v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 505
    .line 506
    invoke-static {v4, v6}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 507
    .line 508
    .line 509
    :catch_1
    :cond_19
    :try_start_c
    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 510
    .line 511
    iput-object v12, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 512
    .line 513
    iput-object v12, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 514
    .line 515
    invoke-virtual {v2, v0}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 516
    .line 517
    .line 518
    goto :goto_f

    .line 519
    :catchall_7
    move-exception v0

    .line 520
    invoke-static {v1, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 521
    .line 522
    .line 523
    :cond_1a
    :goto_f
    throw v3

    .line 524
    :cond_1b
    const/16 v0, 0x15

    .line 525
    .line 526
    const-string v1, "Connection pool is closed"

    .line 527
    .line 528
    invoke-static {v1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(Ljava/lang/String;I)V

    .line 529
    .line 530
    .line 531
    throw v12
.end method
