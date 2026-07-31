.class public final Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $emitInitialState:Z

.field final synthetic $resolvedTableNames:[Ljava/lang/String;

.field final synthetic $tableIds:[I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/room/TriggerBasedInvalidationTracker;


# direct methods
.method public constructor <init>(Landroidx/room/TriggerBasedInvalidationTracker;[IZ[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$tableIds:[I

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$emitInitialState:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$resolvedTableNames:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$tableIds:[I

    .line 6
    .line 7
    iget-boolean v3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$emitInitialState:Z

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$resolvedTableNames:[Ljava/lang/String;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;[IZ[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->label:I

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x3

    .line 10
    const/4 v8, 0x2

    .line 11
    const/4 v9, 0x1

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    if-eq v2, v9, :cond_2

    .line 15
    .line 16
    if-eq v2, v8, :cond_1

    .line 17
    .line 18
    if-eq v2, v7, :cond_0

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v6

    .line 26
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    const-wide/16 v17, 0x1

    .line 37
    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :cond_1
    iget-object v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v17, 0x1

    .line 48
    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_2
    iget-object v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 54
    .line 55
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move-object/from16 v3, p1

    .line 59
    .line 60
    const-wide/16 v17, 0x1

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 69
    .line 70
    iget-object v10, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 71
    .line 72
    iget-object v10, v10, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/room/ObservedTableStates;

    .line 73
    .line 74
    iget-object v11, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$tableIds:[I

    .line 75
    .line 76
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object v12, v10, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 83
    .line 84
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 85
    .line 86
    .line 87
    :try_start_1
    array-length v13, v11

    .line 88
    move v14, v5

    .line 89
    move v15, v14

    .line 90
    :goto_0
    if-ge v14, v13, :cond_5

    .line 91
    .line 92
    aget v16, v11, v14

    .line 93
    .line 94
    const-wide/16 v17, 0x1

    .line 95
    .line 96
    iget-object v3, v10, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    .line 97
    .line 98
    aget-wide v19, v3, v16

    .line 99
    .line 100
    add-long v21, v19, v17

    .line 101
    .line 102
    aput-wide v21, v3, v16

    .line 103
    .line 104
    const-wide/16 v3, 0x0

    .line 105
    .line 106
    cmp-long v3, v19, v3

    .line 107
    .line 108
    if-nez v3, :cond_4

    .line 109
    .line 110
    iput-boolean v9, v10, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 111
    .line 112
    move v15, v9

    .line 113
    goto :goto_1

    .line 114
    :catchall_1
    move-exception v0

    .line 115
    goto/16 :goto_b

    .line 116
    .line 117
    :cond_4
    :goto_1
    add-int/lit8 v14, v14, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    const-wide/16 v17, 0x1

    .line 121
    .line 122
    if-nez v15, :cond_7

    .line 123
    .line 124
    iget-boolean v3, v10, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 125
    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    iget-boolean v3, v10, Landroidx/room/ObservedTableStates;->inProgressSync:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .line 130
    if-eqz v3, :cond_6

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    move v3, v5

    .line 134
    goto :goto_3

    .line 135
    :cond_7
    :goto_2
    move v3, v9

    .line 136
    :goto_3
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 137
    .line 138
    .line 139
    if-eqz v3, :cond_9

    .line 140
    .line 141
    iget-object v3, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 142
    .line 143
    iget-object v3, v3, Landroidx/room/TriggerBasedInvalidationTracker;->database:Landroidx/room/RoomDatabase;

    .line 144
    .line 145
    iput-object v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    .line 146
    .line 147
    iput v9, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->label:I

    .line 148
    .line 149
    invoke-static {v3, v5, v1}, Landroidx/room/util/DBUtil;->getCoroutineContext(Landroidx/room/RoomDatabase;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-ne v3, v0, :cond_8

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_8
    :goto_4
    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    .line 157
    .line 158
    new-instance v4, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$1;

    .line 159
    .line 160
    iget-object v10, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 161
    .line 162
    invoke-direct {v4, v10, v6}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    .line 163
    .line 164
    .line 165
    iput-object v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    .line 166
    .line 167
    iput v8, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->label:I

    .line 168
    .line 169
    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    if-ne v3, v0, :cond_9

    .line 174
    .line 175
    :goto_5
    return-object v0

    .line 176
    :cond_9
    :goto_6
    move-object v13, v2

    .line 177
    :try_start_2
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 178
    .line 179
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 183
    .line 184
    iget-object v2, v2, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableVersions:Landroidx/room/ObservedTableVersions;

    .line 185
    .line 186
    new-instance v10, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    .line 187
    .line 188
    iget-boolean v12, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$emitInitialState:Z

    .line 189
    .line 190
    iget-object v14, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$resolvedTableNames:[Ljava/lang/String;

    .line 191
    .line 192
    iget-object v15, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$tableIds:[I

    .line 193
    .line 194
    invoke-direct/range {v10 .. v15}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/String;[I)V

    .line 195
    .line 196
    .line 197
    iput-object v6, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->L$0:Ljava/lang/Object;

    .line 198
    .line 199
    iput v7, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->label:I

    .line 200
    .line 201
    invoke-virtual {v2, v10, v1}, Landroidx/room/ObservedTableVersions;->collect(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 202
    .line 203
    .line 204
    return-object v0

    .line 205
    :catchall_2
    move-exception v0

    .line 206
    :goto_7
    iget-object v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 207
    .line 208
    iget-object v2, v2, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/room/ObservedTableStates;

    .line 209
    .line 210
    iget-object v1, v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;->$tableIds:[I

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    iget-object v3, v2, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 221
    .line 222
    .line 223
    :try_start_3
    array-length v4, v1

    .line 224
    move v6, v5

    .line 225
    :goto_8
    if-ge v5, v4, :cond_b

    .line 226
    .line 227
    aget v7, v1, v5

    .line 228
    .line 229
    iget-object v8, v2, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    .line 230
    .line 231
    aget-wide v10, v8, v7

    .line 232
    .line 233
    sub-long v12, v10, v17

    .line 234
    .line 235
    aput-wide v12, v8, v7

    .line 236
    .line 237
    cmp-long v7, v10, v17

    .line 238
    .line 239
    if-nez v7, :cond_a

    .line 240
    .line 241
    iput-boolean v9, v2, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 242
    .line 243
    move v6, v9

    .line 244
    goto :goto_9

    .line 245
    :catchall_3
    move-exception v0

    .line 246
    goto :goto_a

    .line 247
    :cond_a
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_b
    if-nez v6, :cond_c

    .line 251
    .line 252
    iget-boolean v1, v2, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 253
    .line 254
    if-nez v1, :cond_c

    .line 255
    .line 256
    iget-boolean v1, v2, Landroidx/room/ObservedTableStates;->inProgressSync:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 257
    .line 258
    :cond_c
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 259
    .line 260
    .line 261
    throw v0

    .line 262
    :goto_a
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 263
    .line 264
    .line 265
    throw v0

    .line 266
    :goto_b
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 267
    .line 268
    .line 269
    throw v0
.end method
