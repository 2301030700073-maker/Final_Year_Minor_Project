.class public final Landroidx/room/coroutines/ConnectionPoolImpl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field public final connectionElementKey:Landroidx/collection/internal/Lock;

.field public final connectionThreadLocal:Ljava/lang/ThreadLocal;

.field public volatile isClosed:Z

.field public final readers:Landroidx/room/coroutines/Pool;

.field public final timeout:J

.field public final writers:Landroidx/room/coroutines/Pool;


# direct methods
.method public constructor <init>(Lcoil3/svg/internal/AndroidSvg;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroidx/collection/internal/Lock;

    const/16 v1, 0x12

    .line 73
    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 74
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/collection/internal/Lock;

    .line 75
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 76
    sget-object v0, Lkotlin/time/Duration;->Companion:Lokio/Path$Companion;

    const/16 v0, 0x1e

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 77
    new-instance v0, Landroidx/room/coroutines/Pool;

    .line 78
    new-instance v1, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p1}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 79
    invoke-direct {v0, p1, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 80
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 81
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    return-void
.end method

.method public constructor <init>(Lcoil3/svg/internal/AndroidSvg;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroidx/collection/internal/Lock;

    .line 8
    .line 9
    const/16 v1, 0x12

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/collection/internal/Lock;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 22
    .line 23
    sget-object v0, Lkotlin/time/Duration;->Companion:Lokio/Path$Companion;

    .line 24
    .line 25
    const/16 v0, 0x1e

    .line 26
    .line 27
    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 34
    .line 35
    if-lez p3, :cond_0

    .line 36
    .line 37
    new-instance v0, Landroidx/room/coroutines/Pool;

    .line 38
    .line 39
    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, p1, p2, v2}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;-><init>(Lcoil3/svg/internal/AndroidSvg;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p3, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 49
    .line 50
    new-instance p3, Landroidx/room/coroutines/Pool;

    .line 51
    .line 52
    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-direct {v0, p1, p2, v1}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;-><init>(Lcoil3/svg/internal/AndroidSvg;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p3, v1, v0}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    iput-object p3, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    const-string p0, "Maximum number of readers must be greater than 0"

    .line 65
    .line 66
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->isClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->isClosed:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/room/coroutines/Pool;->close()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/room/coroutines/Pool;->close()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

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
    invoke-direct {v4, v0, v3}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;-><init>(Landroidx/room/coroutines/ConnectionPoolImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const-string v8, "ROLLBACK TRANSACTION"

    .line 41
    .line 42
    const/4 v9, 0x4

    .line 43
    const/4 v10, 0x3

    .line 44
    const/4 v11, 0x2

    .line 45
    const/4 v12, 0x1

    .line 46
    const/4 v13, 0x0

    .line 47
    if-eqz v6, :cond_5

    .line 48
    .line 49
    if-eq v6, v12, :cond_4

    .line 50
    .line 51
    if-eq v6, v11, :cond_3

    .line 52
    .line 53
    if-eq v6, v10, :cond_2

    .line 54
    .line 55
    if-ne v6, v9, :cond_1

    .line 56
    .line 57
    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 58
    .line 59
    move-object v1, v0

    .line 60
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v2, v0

    .line 65
    check-cast v2, Landroidx/room/coroutines/Pool;

    .line 66
    .line 67
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    goto/16 :goto_7

    .line 71
    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move-object v6, v1

    .line 74
    move-object v1, v0

    .line 75
    goto/16 :goto_8

    .line 76
    .line 77
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v13

    .line 83
    :cond_2
    iget-boolean v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .line 84
    .line 85
    iget-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Landroidx/collection/internal/Lock;

    .line 86
    .line 87
    iget-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 88
    .line 89
    iget-object v10, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Lkotlin/coroutines/CoroutineContext;

    .line 90
    .line 91
    iget-object v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 92
    .line 93
    iget-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v14, Landroidx/room/coroutines/Pool;

    .line 96
    .line 97
    iget-object v15, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 100
    .line 101
    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .line 103
    .line 104
    move-object/from16 v16, v10

    .line 105
    .line 106
    move-object v10, v6

    .line 107
    move-object v6, v11

    .line 108
    move-object/from16 v11, v16

    .line 109
    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :catchall_1
    move-exception v0

    .line 113
    move-object v1, v0

    .line 114
    move-object v6, v11

    .line 115
    :goto_1
    move-object v2, v14

    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object v3

    .line 122
    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-object v3

    .line 126
    :cond_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-boolean v3, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->isClosed:Z

    .line 130
    .line 131
    if-nez v3, :cond_17

    .line 132
    .line 133
    iget-object v3, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 140
    .line 141
    if-nez v3, :cond_7

    .line 142
    .line 143
    iget-object v3, v4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget-object v6, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/collection/internal/Lock;

    .line 149
    .line 150
    invoke-interface {v3, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Landroidx/room/coroutines/ConnectionElement;

    .line 155
    .line 156
    if-eqz v3, :cond_6

    .line 157
    .line 158
    iget-object v3, v3, Landroidx/room/coroutines/ConnectionElement;->connectionWrapper:Landroidx/room/coroutines/PooledConnectionImpl;

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_6
    move-object v3, v13

    .line 162
    :cond_7
    :goto_2
    if-eqz v3, :cond_d

    .line 163
    .line 164
    if-nez v1, :cond_9

    .line 165
    .line 166
    iget-boolean v1, v3, Landroidx/room/coroutines/PooledConnectionImpl;->isReadOnly:Z

    .line 167
    .line 168
    if-nez v1, :cond_8

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_8
    const-string v0, "Cannot upgrade connection from reader to writer"

    .line 172
    .line 173
    invoke-static {v12, v0}, Lcoil3/util/ContextsKt;->throwSQLiteException(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v13

    .line 177
    :cond_9
    :goto_3
    iget-object v1, v4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget-object v6, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/collection/internal/Lock;

    .line 183
    .line 184
    invoke-interface {v1, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-nez v1, :cond_b

    .line 189
    .line 190
    new-instance v1, Landroidx/room/coroutines/ConnectionElement;

    .line 191
    .line 192
    iget-object v6, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/collection/internal/Lock;

    .line 193
    .line 194
    invoke-direct {v1, v6, v3}, Landroidx/room/coroutines/ConnectionElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Landroidx/room/coroutines/PooledConnectionImpl;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 198
    .line 199
    new-instance v6, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 200
    .line 201
    invoke-direct {v6, v3, v0}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v1, v6}, Landroidx/work/OperationKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v1, Landroidx/paging/PageFetcher$flow$1;

    .line 209
    .line 210
    const/16 v6, 0xf

    .line 211
    .line 212
    invoke-direct {v1, v2, v3, v13, v6}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 213
    .line 214
    .line 215
    iput v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 216
    .line 217
    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-ne v0, v5, :cond_a

    .line 222
    .line 223
    goto/16 :goto_6

    .line 224
    .line 225
    :cond_a
    return-object v0

    .line 226
    :cond_b
    iput v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 227
    .line 228
    invoke-interface {v2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-ne v0, v5, :cond_c

    .line 233
    .line 234
    goto/16 :goto_6

    .line 235
    .line 236
    :cond_c
    return-object v0

    .line 237
    :cond_d
    if-eqz v1, :cond_e

    .line 238
    .line 239
    iget-object v3, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_e
    iget-object v3, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 243
    .line 244
    :goto_4
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 245
    .line 246
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 247
    .line 248
    .line 249
    :try_start_2
    iget-object v11, v4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 250
    .line 251
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    iget-object v14, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/collection/internal/Lock;

    .line 255
    .line 256
    iget-wide v12, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 257
    .line 258
    new-instance v15, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;

    .line 259
    .line 260
    invoke-direct {v15, v0, v1, v7}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;ZI)V

    .line 261
    .line 262
    .line 263
    iput-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 264
    .line 265
    iput-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 266
    .line 267
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 268
    .line 269
    iput-object v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Lkotlin/coroutines/CoroutineContext;

    .line 270
    .line 271
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 272
    .line 273
    iput-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Landroidx/collection/internal/Lock;

    .line 274
    .line 275
    iput-boolean v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .line 276
    .line 277
    iput v10, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 278
    .line 279
    invoke-virtual {v3, v12, v13, v15, v4}, Landroidx/room/coroutines/Pool;->acquireWithTimeout-KLykuaI(JLandroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 283
    if-ne v10, v5, :cond_f

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_f
    move-object v15, v2

    .line 287
    move-object v2, v14

    .line 288
    move-object v14, v3

    .line 289
    move-object v3, v10

    .line 290
    move-object v10, v6

    .line 291
    :goto_5
    :try_start_3
    check-cast v3, Landroidx/room/coroutines/ConnectionWithLock;

    .line 292
    .line 293
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    iput-object v11, v3, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 300
    .line 301
    new-instance v11, Ljava/lang/Throwable;

    .line 302
    .line 303
    invoke-direct {v11}, Ljava/lang/Throwable;-><init>()V

    .line 304
    .line 305
    .line 306
    iput-object v11, v3, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 307
    .line 308
    iget-object v11, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 309
    .line 310
    iget-object v12, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 311
    .line 312
    if-eq v11, v12, :cond_10

    .line 313
    .line 314
    if-eqz v1, :cond_10

    .line 315
    .line 316
    const/4 v7, 0x1

    .line 317
    :cond_10
    new-instance v1, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 318
    .line 319
    invoke-direct {v1, v2, v3, v7}, Landroidx/room/coroutines/PooledConnectionImpl;-><init>(Landroidx/collection/internal/Lock;Landroidx/room/coroutines/ConnectionWithLock;Z)V

    .line 320
    .line 321
    .line 322
    iput-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 323
    .line 324
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 325
    .line 326
    if-eqz v1, :cond_14

    .line 327
    .line 328
    check-cast v1, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 329
    .line 330
    new-instance v2, Landroidx/room/coroutines/ConnectionElement;

    .line 331
    .line 332
    iget-object v3, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/collection/internal/Lock;

    .line 333
    .line 334
    invoke-direct {v2, v3, v1}, Landroidx/room/coroutines/ConnectionElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Landroidx/room/coroutines/PooledConnectionImpl;)V

    .line 335
    .line 336
    .line 337
    iget-object v0, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 338
    .line 339
    new-instance v3, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 340
    .line 341
    invoke-direct {v3, v1, v0}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 342
    .line 343
    .line 344
    invoke-static {v2, v3}, Landroidx/work/OperationKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    new-instance v1, Landroidx/paging/PageFetcher$flow$1;

    .line 349
    .line 350
    const/16 v2, 0x10

    .line 351
    .line 352
    const/4 v3, 0x0

    .line 353
    invoke-direct {v1, v15, v6, v3, v2}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 354
    .line 355
    .line 356
    iput-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 357
    .line 358
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 359
    .line 360
    iput-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 361
    .line 362
    iput-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Lkotlin/coroutines/CoroutineContext;

    .line 363
    .line 364
    iput-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 365
    .line 366
    iput-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Landroidx/collection/internal/Lock;

    .line 367
    .line 368
    iput v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 369
    .line 370
    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 374
    if-ne v3, v5, :cond_11

    .line 375
    .line 376
    :goto_6
    return-object v5

    .line 377
    :cond_11
    move-object v1, v6

    .line 378
    move-object v2, v14

    .line 379
    :goto_7
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 382
    .line 383
    if-eqz v0, :cond_13

    .line 384
    .line 385
    iget-boolean v1, v0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    .line 386
    .line 387
    if-nez v1, :cond_12

    .line 388
    .line 389
    const/4 v15, 0x1

    .line 390
    iput-boolean v15, v0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    .line 391
    .line 392
    iget-object v1, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 393
    .line 394
    iget-object v1, v1, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    .line 395
    .line 396
    invoke-interface {v1}, Landroidx/sqlite/SQLiteConnection;->inTransaction()Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_12

    .line 401
    .line 402
    iget-object v1, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 403
    .line 404
    invoke-static {v1, v8}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    :cond_12
    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 408
    .line 409
    const/4 v1, 0x0

    .line 410
    iput-object v1, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 411
    .line 412
    iput-object v1, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 413
    .line 414
    invoke-virtual {v2, v0}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V

    .line 415
    .line 416
    .line 417
    :cond_13
    return-object v3

    .line 418
    :catchall_2
    move-exception v0

    .line 419
    move-object v1, v0

    .line 420
    goto/16 :goto_1

    .line 421
    .line 422
    :cond_14
    :try_start_4
    const-string v0, "Required value was null."

    .line 423
    .line 424
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 425
    .line 426
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 430
    :catchall_3
    move-exception v0

    .line 431
    move-object v1, v0

    .line 432
    move-object v2, v3

    .line 433
    :goto_8
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 434
    :catchall_4
    move-exception v0

    .line 435
    move-object v3, v0

    .line 436
    :try_start_6
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 439
    .line 440
    if-eqz v0, :cond_16

    .line 441
    .line 442
    iget-boolean v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    .line 443
    .line 444
    if-nez v4, :cond_15

    .line 445
    .line 446
    const/4 v15, 0x1

    .line 447
    iput-boolean v15, v0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    .line 448
    .line 449
    iget-object v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 450
    .line 451
    iget-object v4, v4, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    .line 452
    .line 453
    invoke-interface {v4}, Landroidx/sqlite/SQLiteConnection;->inTransaction()Z

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    if-eqz v4, :cond_15

    .line 458
    .line 459
    iget-object v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 460
    .line 461
    invoke-static {v4, v8}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    :cond_15
    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 465
    .line 466
    const/4 v4, 0x0

    .line 467
    iput-object v4, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 468
    .line 469
    iput-object v4, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 470
    .line 471
    invoke-virtual {v2, v0}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 472
    .line 473
    .line 474
    goto :goto_9

    .line 475
    :catchall_5
    move-exception v0

    .line 476
    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 477
    .line 478
    .line 479
    :cond_16
    :goto_9
    throw v3

    .line 480
    :cond_17
    const/16 v0, 0x15

    .line 481
    .line 482
    const-string v1, "Connection pool is closed"

    .line 483
    .line 484
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->throwSQLiteException(ILjava/lang/String;)V

    .line 485
    .line 486
    .line 487
    const/4 v1, 0x0

    .line 488
    throw v1
.end method
