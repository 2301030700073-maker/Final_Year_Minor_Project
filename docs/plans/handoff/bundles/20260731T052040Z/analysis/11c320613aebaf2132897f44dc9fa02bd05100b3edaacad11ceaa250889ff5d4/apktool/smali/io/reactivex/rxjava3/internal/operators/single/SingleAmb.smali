.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;
.super Lio/reactivex/rxjava3/core/Single;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final sources:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;->sources:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 7

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;->sources:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_RUNNABLE:Lio/reactivex/rxjava3/internal/functions/Functions$EmptyRunnable;

    .line 18
    .line 19
    new-instance v1, Lio/reactivex/rxjava3/disposables/RunnableDisposable;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lio/reactivex/rxjava3/disposables/ReferenceDisposable;->isDisposed()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :try_start_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;->sources:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/util/concurrent/Callable;

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v0, "The callable returned a null value"

    .line 43
    .line 44
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lio/reactivex/rxjava3/disposables/ReferenceDisposable;->isDisposed()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lio/reactivex/rxjava3/disposables/ReferenceDisposable;->isDisposed()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {p0}, Lkotlin/math/MathKt;->onError(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void

    .line 75
    :pswitch_1
    :try_start_1
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;->sources:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Lio/reactivex/rxjava3/functions/Supplier;

    .line 78
    .line 79
    invoke-interface {p0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string v0, "Supplier returned a null Throwable."

    .line 84
    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    sget-object v0, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->TERMINATED:Lio/reactivex/rxjava3/internal/util/ExceptionHelper$Termination;

    .line 88
    .line 89
    check-cast p0, Ljava/lang/Throwable;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->createNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :goto_1
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    .line 103
    .line 104
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleCreate$Emitter;

    .line 112
    .line 113
    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/single/SingleCreate$Emitter;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 117
    .line 118
    .line 119
    :try_start_2
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;->sources:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;

    .line 122
    .line 123
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 124
    .line 125
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->getActivityContext()Lj$/util/Optional;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance v1, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    .line 130
    .line 131
    const/16 v2, 0x8

    .line 132
    .line 133
    invoke-direct {v1, p0, v0, v2}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catchall_2
    move-exception p0

    .line 141
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    .line 149
    .line 150
    if-eq p1, v1, :cond_5

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    .line 157
    .line 158
    if-eq p1, v1, :cond_5

    .line 159
    .line 160
    :try_start_3
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/single/SingleCreate$Emitter;->downstream:Lio/reactivex/rxjava3/core/SingleObserver;

    .line 161
    .line 162
    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 163
    .line 164
    .line 165
    if-eqz p1, :cond_6

    .line 166
    .line 167
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :catchall_3
    move-exception p0

    .line 172
    if-eqz p1, :cond_4

    .line 173
    .line 174
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 175
    .line 176
    .line 177
    :cond_4
    throw p0

    .line 178
    :cond_5
    invoke-static {p0}, Lkotlin/math/MathKt;->onError(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    :goto_3
    return-void

    .line 182
    :pswitch_3
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;->sources:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p0, [Lio/reactivex/rxjava3/core/SingleSource;

    .line 185
    .line 186
    array-length v0, p0

    .line 187
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 190
    .line 191
    .line 192
    new-instance v2, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 193
    .line 194
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-interface {p1, v2}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 198
    .line 199
    .line 200
    const/4 v3, 0x0

    .line 201
    move v4, v3

    .line 202
    :goto_4
    if-ge v4, v0, :cond_a

    .line 203
    .line 204
    aget-object v5, p0, v4

    .line 205
    .line 206
    iget-boolean v6, v2, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    .line 207
    .line 208
    if-eqz v6, :cond_7

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_7
    if-nez v5, :cond_9

    .line 212
    .line 213
    invoke-virtual {v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 214
    .line 215
    .line 216
    new-instance p0, Ljava/lang/NullPointerException;

    .line 217
    .line 218
    const-string v0, "One of the sources is null"

    .line 219
    .line 220
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/4 v0, 0x1

    .line 224
    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_8
    invoke-static {p0}, Lkotlin/math/MathKt;->onError(Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_9
    new-instance v6, Lokhttp3/Dispatcher;

    .line 239
    .line 240
    invoke-direct {v6, p1, v2, v1}, Lokhttp3/Dispatcher;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 241
    .line 242
    .line 243
    check-cast v5, Lio/reactivex/rxjava3/core/Single;

    .line 244
    .line 245
    invoke-virtual {v5, v6}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 246
    .line 247
    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_a
    :goto_5
    return-void

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
