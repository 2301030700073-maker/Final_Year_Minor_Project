.class public final Lcom/jakewharton/rxbinding4/view/ViewClickObservable;
.super Lio/reactivex/rxjava3/core/Observable;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final view:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;->view:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;->view:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 9
    .line 10
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object p0, p0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;->view:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lorg/reactivestreams/Publisher;

    .line 22
    .line 23
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher$PublisherSubscriber;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromPublisher$PublisherSubscriber;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    .line 26
    .line 27
    .line 28
    check-cast p0, Lio/reactivex/rxjava3/core/Flowable;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;->view:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;-><init>(Lio/reactivex/rxjava3/core/Observer;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 44
    .line 45
    .line 46
    iget-boolean p1, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->fusionMode:Z

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    array-length p1, p0

    .line 52
    const/4 v1, 0x0

    .line 53
    :goto_0
    if-ge v1, p1, :cond_2

    .line 54
    .line 55
    iget-boolean v2, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->disposed:Z

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    aget-object v2, p0, v1

    .line 60
    .line 61
    iget-object v3, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    .line 62
    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    new-instance p0, Ljava/lang/NullPointerException;

    .line 66
    .line 67
    const-string p1, "The element at index "

    .line 68
    .line 69
    const-string v0, " is null"

    .line 70
    .line 71
    invoke-static {p1, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v3, p0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-interface {v3, v2}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-boolean p0, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->disposed:Z

    .line 89
    .line 90
    if-nez p0, :cond_3

    .line 91
    .line 92
    iget-object p0, v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->downstream:Lio/reactivex/rxjava3/core/Observer;

    .line 93
    .line 94
    invoke-interface {p0}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    return-void

    .line 98
    :pswitch_2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;

    .line 99
    .line 100
    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;-><init>(Lio/reactivex/rxjava3/core/Observer;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 104
    .line 105
    .line 106
    :try_start_0
    iget-object p0, p0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;->view:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->subscribe(Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_4

    .line 123
    .line 124
    invoke-static {p0}, Lkotlin/math/MathKt;->onError(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_2
    return-void

    .line 128
    :pswitch_3
    new-instance v0, Lcom/jakewharton/rxbinding4/widget/TextViewTextChangesObservable$Listener;

    .line 129
    .line 130
    iget-object p0, p0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;->view:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Landroid/widget/EditText;

    .line 133
    .line 134
    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding4/widget/TextViewTextChangesObservable$Listener;-><init>(Landroid/widget/EditText;Lio/reactivex/rxjava3/core/Observer;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_4
    iget-object p0, p0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;->view:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p0, Landroid/view/View;

    .line 154
    .line 155
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_5

    .line 168
    .line 169
    sget-object p0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_RUNNABLE:Lio/reactivex/rxjava3/internal/functions/Functions$EmptyRunnable;

    .line 170
    .line 171
    new-instance v0, Lio/reactivex/rxjava3/disposables/RunnableDisposable;

    .line 172
    .line 173
    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 177
    .line 178
    .line 179
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v1, "Expected to be called on the main thread but was "

    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_5
    new-instance v0, Lcom/jakewharton/rxbinding4/view/ViewClickObservable$Listener;

    .line 214
    .line 215
    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable$Listener;-><init>(Landroid/view/View;Lio/reactivex/rxjava3/core/Observer;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Observer;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    :goto_3
    return-void

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
