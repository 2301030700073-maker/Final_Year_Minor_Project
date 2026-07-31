.class public final Landroidx/room/coroutines/ConnectionPoolImpl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field public final connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

.field public final connectionThreadLocal:Ljava/lang/ThreadLocal;

.field public volatile isClosed:Z

.field public final onTimeout:I

.field public final readers:Landroidx/room/coroutines/Pool;

.field public final timeout:J

.field public final writers:Landroidx/room/coroutines/Pool;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonBuilder;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroidx/room/coroutines/ConnectionElementKey;

    .line 72
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 74
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 75
    sget-object v0, Lkotlin/time/Duration;->Companion:Lokio/ByteString$Companion;

    const/16 v0, 0x1e

    invoke-static {v0}, Lkotlin/time/InstantKt;->toDuration(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    const/4 v0, 0x2

    .line 76
    iput v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->onTimeout:I

    .line 77
    new-instance v0, Landroidx/room/coroutines/Pool;

    .line 78
    new-instance v1, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    const/16 v2, 0x10

    invoke-direct {v1, p1, v2}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x1

    .line 79
    invoke-direct {v0, p1, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 80
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 81
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;I)V
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
    new-instance v0, Landroidx/room/coroutines/ConnectionElementKey;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 20
    .line 21
    sget-object v0, Lkotlin/time/Duration;->Companion:Lokio/ByteString$Companion;

    .line 22
    .line 23
    const/16 v0, 0x1e

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/time/InstantKt;->toDuration(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    iput v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->onTimeout:I

    .line 33
    .line 34
    if-lez p3, :cond_0

    .line 35
    .line 36
    new-instance v0, Landroidx/room/coroutines/Pool;

    .line 37
    .line 38
    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, p1, p2, v2}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;-><init>(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p3, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 48
    .line 49
    new-instance p3, Landroidx/room/coroutines/Pool;

    .line 50
    .line 51
    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-direct {v0, p1, p2, v1}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;-><init>(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p3, v1, v0}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    iput-object p3, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    const-string p0, "Maximum number of readers must be greater than 0"

    .line 64
    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
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
    const-string v7, "ROLLBACK TRANSACTION"

    .line 40
    .line 41
    const/4 v8, 0x4

    .line 42
    const/4 v9, 0x3

    .line 43
    const/4 v10, 0x2

    .line 44
    const/4 v11, 0x1

    .line 45
    const/4 v12, 0x0

    .line 46
    if-eqz v6, :cond_5

    .line 47
    .line 48
    if-eq v6, v11, :cond_4

    .line 49
    .line 50
    if-eq v6, v10, :cond_3

    .line 51
    .line 52
    if-eq v6, v9, :cond_2

    .line 53
    .line 54
    if-ne v6, v8, :cond_1

    .line 55
    .line 56
    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v1, v0

    .line 59
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 60
    .line 61
    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v2, v0

    .line 64
    check-cast v2, Landroidx/room/coroutines/Pool;

    .line 65
    .line 66
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto/16 :goto_8

    .line 70
    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object v6, v1

    .line 73
    move-object v1, v0

    .line 74
    goto/16 :goto_9

    .line 75
    .line 76
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v12

    .line 82
    :cond_2
    iget-boolean v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .line 83
    .line 84
    iget-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Landroidx/room/coroutines/ConnectionElementKey;

    .line 87
    .line 88
    iget-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 91
    .line 92
    iget-object v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    .line 95
    .line 96
    iget-object v10, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 99
    .line 100
    iget-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v13, Landroidx/room/coroutines/Pool;

    .line 103
    .line 104
    iget-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 107
    .line 108
    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .line 110
    .line 111
    move-object/from16 v16, v9

    .line 112
    .line 113
    move-object v9, v6

    .line 114
    move-object v6, v10

    .line 115
    move-object/from16 v10, v16

    .line 116
    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :catchall_1
    move-exception v0

    .line 120
    move-object v1, v0

    .line 121
    move-object v6, v10

    .line 122
    :goto_1
    move-object v2, v13

    .line 123
    goto/16 :goto_9

    .line 124
    .line 125
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-object v3

    .line 129
    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-object v3

    .line 133
    :cond_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget-boolean v3, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->isClosed:Z

    .line 137
    .line 138
    if-nez v3, :cond_17

    .line 139
    .line 140
    iget-object v3, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 147
    .line 148
    if-nez v3, :cond_7

    .line 149
    .line 150
    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    iget-object v6, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 155
    .line 156
    invoke-interface {v3, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Landroidx/room/coroutines/ConnectionElement;

    .line 161
    .line 162
    if-eqz v3, :cond_6

    .line 163
    .line 164
    iget-object v3, v3, Landroidx/room/coroutines/ConnectionElement;->connectionWrapper:Landroidx/room/coroutines/PooledConnectionImpl;

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    move-object v3, v12

    .line 168
    :cond_7
    :goto_2
    if-eqz v3, :cond_d

    .line 169
    .line 170
    if-nez v1, :cond_9

    .line 171
    .line 172
    iget-boolean v1, v3, Landroidx/room/coroutines/PooledConnectionImpl;->isReadOnly:Z

    .line 173
    .line 174
    if-nez v1, :cond_8

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    const-string v0, "Cannot upgrade connection from reader to writer"

    .line 178
    .line 179
    invoke-static {v11, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v12

    .line 183
    :cond_9
    :goto_3
    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget-object v6, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 188
    .line 189
    invoke-interface {v1, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-nez v1, :cond_b

    .line 194
    .line 195
    new-instance v1, Landroidx/room/coroutines/ConnectionElement;

    .line 196
    .line 197
    iget-object v6, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 198
    .line 199
    invoke-direct {v1, v6, v3}, Landroidx/room/coroutines/ConnectionElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Landroidx/room/coroutines/PooledConnectionImpl;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance v6, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 208
    .line 209
    invoke-direct {v6, v3, v0}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v1, v6}, Lnet/newpipe/app/AppKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;

    .line 217
    .line 218
    invoke-direct {v1, v2, v3, v12}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/room/coroutines/PooledConnectionImpl;Lkotlin/coroutines/Continuation;)V

    .line 219
    .line 220
    .line 221
    iput v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 222
    .line 223
    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-ne v0, v5, :cond_a

    .line 228
    .line 229
    goto/16 :goto_7

    .line 230
    .line 231
    :cond_a
    return-object v0

    .line 232
    :cond_b
    iput v10, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 233
    .line 234
    invoke-interface {v2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-ne v0, v5, :cond_c

    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :cond_c
    return-object v0

    .line 243
    :cond_d
    if-eqz v1, :cond_e

    .line 244
    .line 245
    iget-object v3, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_e
    iget-object v3, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 249
    .line 250
    :goto_4
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 251
    .line 252
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 253
    .line 254
    .line 255
    :try_start_2
    invoke-virtual {v4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    iget-object v13, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 260
    .line 261
    iget-wide v14, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 262
    .line 263
    new-instance v11, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;

    .line 264
    .line 265
    invoke-direct {v11, v0, v1}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/room/coroutines/ConnectionPoolImpl;Z)V

    .line 266
    .line 267
    .line 268
    iput-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 269
    .line 270
    iput-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 271
    .line 272
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    .line 273
    .line 274
    iput-object v10, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    .line 275
    .line 276
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    .line 277
    .line 278
    iput-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    .line 279
    .line 280
    iput-boolean v1, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .line 281
    .line 282
    iput v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 283
    .line 284
    invoke-virtual {v3, v14, v15, v11, v4}, Landroidx/room/coroutines/Pool;->acquireWithTimeout-KLykuaI(JLandroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 288
    if-ne v9, v5, :cond_f

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_f
    move-object v14, v2

    .line 292
    move-object v2, v13

    .line 293
    move-object v13, v3

    .line 294
    move-object v3, v9

    .line 295
    move-object v9, v6

    .line 296
    :goto_5
    :try_start_3
    check-cast v3, Landroidx/room/coroutines/ConnectionWithLock;

    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    iput-object v10, v3, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 305
    .line 306
    new-instance v10, Ljava/lang/Throwable;

    .line 307
    .line 308
    invoke-direct {v10}, Ljava/lang/Throwable;-><init>()V

    .line 309
    .line 310
    .line 311
    iput-object v10, v3, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 312
    .line 313
    iget-object v10, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 314
    .line 315
    iget-object v11, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 316
    .line 317
    if-eq v10, v11, :cond_10

    .line 318
    .line 319
    if-eqz v1, :cond_10

    .line 320
    .line 321
    const/4 v1, 0x1

    .line 322
    goto :goto_6

    .line 323
    :cond_10
    const/4 v1, 0x0

    .line 324
    :goto_6
    new-instance v10, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 325
    .line 326
    invoke-direct {v10, v2, v3, v1}, Landroidx/room/coroutines/PooledConnectionImpl;-><init>(Landroidx/room/coroutines/ConnectionElementKey;Landroidx/room/coroutines/ConnectionWithLock;Z)V

    .line 327
    .line 328
    .line 329
    iput-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 330
    .line 331
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 332
    .line 333
    if-eqz v1, :cond_14

    .line 334
    .line 335
    check-cast v1, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 336
    .line 337
    new-instance v2, Landroidx/room/coroutines/ConnectionElement;

    .line 338
    .line 339
    iget-object v3, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 340
    .line 341
    invoke-direct {v2, v3, v1}, Landroidx/room/coroutines/ConnectionElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Landroidx/room/coroutines/PooledConnectionImpl;)V

    .line 342
    .line 343
    .line 344
    iget-object v0, v0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    new-instance v3, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 350
    .line 351
    invoke-direct {v3, v1, v0}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 352
    .line 353
    .line 354
    invoke-static {v2, v3}, Lnet/newpipe/app/AppKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;

    .line 359
    .line 360
    invoke-direct {v1, v14, v6, v12}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 361
    .line 362
    .line 363
    iput-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 364
    .line 365
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 366
    .line 367
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    .line 368
    .line 369
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    .line 370
    .line 371
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    .line 372
    .line 373
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    .line 374
    .line 375
    iput v8, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 376
    .line 377
    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 381
    if-ne v3, v5, :cond_11

    .line 382
    .line 383
    :goto_7
    return-object v5

    .line 384
    :cond_11
    move-object v1, v6

    .line 385
    move-object v2, v13

    .line 386
    :goto_8
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 389
    .line 390
    if-eqz v0, :cond_13

    .line 391
    .line 392
    iget-boolean v1, v0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    .line 393
    .line 394
    if-nez v1, :cond_12

    .line 395
    .line 396
    const/4 v1, 0x1

    .line 397
    iput-boolean v1, v0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    .line 398
    .line 399
    iget-object v1, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 400
    .line 401
    iget-object v1, v1, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    .line 402
    .line 403
    invoke-interface {v1}, Landroidx/sqlite/SQLiteConnection;->inTransaction()Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_12

    .line 408
    .line 409
    iget-object v1, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 410
    .line 411
    invoke-static {v1, v7}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    :cond_12
    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 415
    .line 416
    iput-object v12, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 417
    .line 418
    iput-object v12, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 419
    .line 420
    invoke-virtual {v2, v0}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V

    .line 421
    .line 422
    .line 423
    :cond_13
    return-object v3

    .line 424
    :catchall_2
    move-exception v0

    .line 425
    move-object v1, v0

    .line 426
    goto/16 :goto_1

    .line 427
    .line 428
    :cond_14
    :try_start_4
    const-string v0, "Required value was null."

    .line 429
    .line 430
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 431
    .line 432
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 436
    :catchall_3
    move-exception v0

    .line 437
    move-object v1, v0

    .line 438
    move-object v2, v3

    .line 439
    :goto_9
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 440
    :catchall_4
    move-exception v0

    .line 441
    move-object v3, v0

    .line 442
    :try_start_6
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 445
    .line 446
    if-eqz v0, :cond_16

    .line 447
    .line 448
    iget-boolean v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    .line 449
    .line 450
    if-nez v4, :cond_15

    .line 451
    .line 452
    const/4 v4, 0x1

    .line 453
    iput-boolean v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    .line 454
    .line 455
    iget-object v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 456
    .line 457
    iget-object v4, v4, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    .line 458
    .line 459
    invoke-interface {v4}, Landroidx/sqlite/SQLiteConnection;->inTransaction()Z

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    if-eqz v4, :cond_15

    .line 464
    .line 465
    iget-object v4, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 466
    .line 467
    invoke-static {v4, v7}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    :cond_15
    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 471
    .line 472
    iput-object v12, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 473
    .line 474
    iput-object v12, v0, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 475
    .line 476
    invoke-virtual {v2, v0}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 477
    .line 478
    .line 479
    goto :goto_a

    .line 480
    :catchall_5
    move-exception v0

    .line 481
    invoke-static {v1, v0}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 482
    .line 483
    .line 484
    :cond_16
    :goto_a
    throw v3

    .line 485
    :cond_17
    const/16 v0, 0x15

    .line 486
    .line 487
    const-string v1, "Connection pool is closed"

    .line 488
    .line 489
    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v12
.end method
