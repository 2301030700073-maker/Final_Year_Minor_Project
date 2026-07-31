.class public final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/core/FlowableSubscriber;


# static fields
.field private static final serialVersionUID:J = -0x3e0ae1f3a0d08e59L


# instance fields
.field volatile cancelled:Z

.field volatile done:Z

.field final emissions:[J

.field error:Ljava/lang/Throwable;

.field index:I

.field final limit:I

.field final prefetch:I

.field produced:I

.field queue:Lio/reactivex/rxjava3/operators/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/SimpleQueue;"
        }
    .end annotation
.end field

.field final requests:Ljava/util/concurrent/atomic/AtomicLongArray;

.field sourceMode:I

.field final subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final subscribers:[Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Subscriber;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>([Lorg/reactivestreams/Subscriber;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->limit:I

    .line 18
    .line 19
    array-length p1, p1

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 21
    .line 22
    add-int v1, p1, p1

    .line 23
    .line 24
    add-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 30
    .line 31
    int-to-long v2, p1

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 33
    .line 34
    .line 35
    new-array p1, p1, [J

    .line 36
    .line 37
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->emissions:[J

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final drain()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_c

    .line 10
    .line 11
    :cond_0
    iget v0, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    .line 12
    .line 13
    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    .line 14
    .line 15
    iget-object v3, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    .line 16
    .line 17
    const-wide/16 v4, 0x1

    .line 18
    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x1

    .line 23
    if-ne v0, v9, :cond_9

    .line 24
    .line 25
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 26
    .line 27
    iget-object v10, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->emissions:[J

    .line 28
    .line 29
    array-length v11, v10

    .line 30
    iget v12, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    .line 31
    .line 32
    move v13, v9

    .line 33
    :cond_1
    :goto_0
    move v14, v8

    .line 34
    :cond_2
    iget-boolean v15, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancelled:Z

    .line 35
    .line 36
    if-eqz v15, :cond_3

    .line 37
    .line 38
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/SimpleQueue;->clear()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_c

    .line 42
    .line 43
    :cond_3
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/SimpleQueue;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v15

    .line 47
    if-eqz v15, :cond_4

    .line 48
    .line 49
    array-length v0, v3

    .line 50
    :goto_1
    if-ge v8, v0, :cond_12

    .line 51
    .line 52
    aget-object v1, v3, v8

    .line 53
    .line 54
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v8, v8, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 61
    .line 62
    .line 63
    move-result-wide v15

    .line 64
    aget-wide v17, v10, v12

    .line 65
    .line 66
    cmp-long v15, v15, v17

    .line 67
    .line 68
    if-eqz v15, :cond_6

    .line 69
    .line 70
    add-int v15, v11, v12

    .line 71
    .line 72
    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v15

    .line 76
    cmp-long v15, v15, v6

    .line 77
    .line 78
    if-nez v15, :cond_6

    .line 79
    .line 80
    :try_start_0
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-nez v14, :cond_5

    .line 85
    .line 86
    array-length v0, v3

    .line 87
    :goto_2
    if-ge v8, v0, :cond_12

    .line 88
    .line 89
    aget-object v1, v3, v8

    .line 90
    .line 91
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v8, v8, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    aget-object v15, v3, v12

    .line 98
    .line 99
    invoke-interface {v15, v14}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    add-long v17, v17, v4

    .line 103
    .line 104
    aput-wide v17, v10, v12

    .line 105
    .line 106
    move v14, v8

    .line 107
    goto :goto_4

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    .line 113
    .line 114
    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 115
    .line 116
    .line 117
    array-length v1, v3

    .line 118
    :goto_3
    if-ge v8, v1, :cond_12

    .line 119
    .line 120
    aget-object v2, v3, v8

    .line 121
    .line 122
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v8, v8, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    add-int/2addr v14, v9

    .line 129
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 130
    .line 131
    if-ne v12, v11, :cond_7

    .line 132
    .line 133
    move v12, v8

    .line 134
    :cond_7
    if-ne v14, v11, :cond_2

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    if-ne v14, v13, :cond_8

    .line 141
    .line 142
    iput v12, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    .line 143
    .line 144
    neg-int v13, v13

    .line 145
    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-nez v13, :cond_1

    .line 150
    .line 151
    goto/16 :goto_c

    .line 152
    .line 153
    :cond_8
    move v13, v14

    .line 154
    goto :goto_0

    .line 155
    :cond_9
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 156
    .line 157
    iget-object v10, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->emissions:[J

    .line 158
    .line 159
    array-length v11, v10

    .line 160
    iget v12, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    .line 161
    .line 162
    iget v13, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->produced:I

    .line 163
    .line 164
    move v14, v9

    .line 165
    :goto_5
    move-wide/from16 v16, v4

    .line 166
    .line 167
    move v15, v8

    .line 168
    :goto_6
    iget-boolean v4, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancelled:Z

    .line 169
    .line 170
    if-eqz v4, :cond_a

    .line 171
    .line 172
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/SimpleQueue;->clear()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_c

    .line 176
    .line 177
    :cond_a
    iget-boolean v4, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    .line 178
    .line 179
    if-eqz v4, :cond_b

    .line 180
    .line 181
    iget-object v5, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->error:Ljava/lang/Throwable;

    .line 182
    .line 183
    if-eqz v5, :cond_b

    .line 184
    .line 185
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/SimpleQueue;->clear()V

    .line 186
    .line 187
    .line 188
    array-length v0, v3

    .line 189
    :goto_7
    if-ge v8, v0, :cond_12

    .line 190
    .line 191
    aget-object v1, v3, v8

    .line 192
    .line 193
    invoke-interface {v1, v5}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    add-int/lit8 v8, v8, 0x1

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_b
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/SimpleQueue;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-eqz v4, :cond_c

    .line 204
    .line 205
    if-eqz v5, :cond_c

    .line 206
    .line 207
    array-length v0, v3

    .line 208
    :goto_8
    if-ge v8, v0, :cond_12

    .line 209
    .line 210
    aget-object v1, v3, v8

    .line 211
    .line 212
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 213
    .line 214
    .line 215
    add-int/lit8 v8, v8, 0x1

    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_c
    if-eqz v5, :cond_d

    .line 219
    .line 220
    goto :goto_b

    .line 221
    :cond_d
    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 222
    .line 223
    .line 224
    move-result-wide v4

    .line 225
    aget-wide v18, v10, v12

    .line 226
    .line 227
    cmp-long v4, v4, v18

    .line 228
    .line 229
    if-eqz v4, :cond_10

    .line 230
    .line 231
    add-int v4, v11, v12

    .line 232
    .line 233
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 234
    .line 235
    .line 236
    move-result-wide v4

    .line 237
    cmp-long v4, v4, v6

    .line 238
    .line 239
    if-nez v4, :cond_10

    .line 240
    .line 241
    :try_start_1
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/SimpleQueue;->poll()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    if-nez v4, :cond_e

    .line 246
    .line 247
    goto :goto_b

    .line 248
    :cond_e
    aget-object v5, v3, v12

    .line 249
    .line 250
    invoke-interface {v5, v4}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    add-long v18, v18, v16

    .line 254
    .line 255
    aput-wide v18, v10, v12

    .line 256
    .line 257
    add-int/lit8 v13, v13, 0x1

    .line 258
    .line 259
    iget v4, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->limit:I

    .line 260
    .line 261
    if-ne v13, v4, :cond_f

    .line 262
    .line 263
    iget-object v4, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    .line 264
    .line 265
    int-to-long v6, v13

    .line 266
    invoke-interface {v4, v6, v7}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 267
    .line 268
    .line 269
    move v13, v8

    .line 270
    :cond_f
    move v15, v8

    .line 271
    goto :goto_a

    .line 272
    :catchall_1
    move-exception v0

    .line 273
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    .line 277
    .line 278
    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 279
    .line 280
    .line 281
    array-length v1, v3

    .line 282
    :goto_9
    if-ge v8, v1, :cond_12

    .line 283
    .line 284
    aget-object v2, v3, v8

    .line 285
    .line 286
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    add-int/lit8 v8, v8, 0x1

    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_10
    add-int/2addr v15, v9

    .line 293
    :goto_a
    add-int/lit8 v12, v12, 0x1

    .line 294
    .line 295
    if-ne v12, v11, :cond_11

    .line 296
    .line 297
    move v12, v8

    .line 298
    :cond_11
    if-ne v15, v11, :cond_14

    .line 299
    .line 300
    :goto_b
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-ne v4, v14, :cond_13

    .line 305
    .line 306
    iput v12, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->index:I

    .line 307
    .line 308
    iput v13, v1, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->produced:I

    .line 309
    .line 310
    neg-int v4, v14

    .line 311
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-nez v4, :cond_13

    .line 316
    .line 317
    :cond_12
    :goto_c
    return-void

    .line 318
    :cond_13
    move v14, v4

    .line 319
    move-wide/from16 v4, v16

    .line 320
    .line 321
    const-wide/16 v6, 0x0

    .line 322
    .line 323
    goto/16 :goto_5

    .line 324
    .line 325
    :cond_14
    const-wide/16 v6, 0x0

    .line 326
    .line 327
    goto/16 :goto_6
.end method

.method public final onComplete()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->error:Ljava/lang/Throwable;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/operators/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    .line 14
    .line 15
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lio/reactivex/rxjava3/exceptions/QueueOverflowException;

    .line 19
    .line 20
    invoke-direct {p1}, Lio/reactivex/rxjava3/exceptions/QueueOverflowException;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->onError(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->upstream:Lorg/reactivestreams/Subscription;

    .line 10
    .line 11
    instance-of v0, p1, Lio/reactivex/rxjava3/operators/QueueSubscription;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Lio/reactivex/rxjava3/operators/QueueSubscription;

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/operators/QueueFuseable;->requestFusion(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    .line 27
    .line 28
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    .line 29
    .line 30
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->done:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->setupSubscribers()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v2, 0x2

    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    iput v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->sourceMode:I

    .line 43
    .line 44
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    .line 45
    .line 46
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->setupSubscribers()V

    .line 47
    .line 48
    .line 49
    iget p0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    .line 50
    .line 51
    int-to-long v0, p0

    .line 52
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    .line 57
    .line 58
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    .line 59
    .line 60
    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->queue:Lio/reactivex/rxjava3/operators/SimpleQueue;

    .line 64
    .line 65
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->setupSubscribers()V

    .line 66
    .line 67
    .line 68
    iget p0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->prefetch:I

    .line 69
    .line 70
    int-to-long v0, p0

    .line 71
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final setupSubscribers()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscribers:[Lorg/reactivestreams/Subscriber;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    add-int/lit8 v4, v2, 0x1

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 12
    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$RailSubscription;

    .line 17
    .line 18
    invoke-direct {v5, p0, v2, v1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$RailSubscription;-><init>(Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;II)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v3, v5}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 22
    .line 23
    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
