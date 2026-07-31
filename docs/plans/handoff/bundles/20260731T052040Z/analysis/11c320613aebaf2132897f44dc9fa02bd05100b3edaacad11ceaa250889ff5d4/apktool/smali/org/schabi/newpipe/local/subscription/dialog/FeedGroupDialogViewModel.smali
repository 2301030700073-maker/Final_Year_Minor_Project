.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;


# instance fields
.field public actionProcessingDisposable:Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

.field public final dialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field public final feedGroupDisposable:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

.field public final filterSubscriptions:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

.field public final groupId:J

.field public final groupLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

.field public final subscriptionsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

.field public final subscriptionsLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final toggleShowOnlyUngrouped:Lio/reactivex/rxjava3/processors/BehaviorProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupId:J

    .line 8
    .line 9
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 15
    .line 16
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 22
    .line 23
    new-instance p1, Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 24
    .line 25
    invoke-direct {p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->filterSubscriptions:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 29
    .line 30
    new-instance v1, Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 31
    .line 32
    invoke-direct {v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->toggleShowOnlyUngrouped:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 36
    .line 37
    invoke-virtual {p1, p4}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-virtual {v1, p4}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    sget-object p5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;

    .line 50
    .line 51
    invoke-static {p1, p4, p5}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p4, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;

    .line 56
    .line 57
    invoke-direct {p4, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 61
    .line 62
    const/4 p5, 0x6

    .line 63
    invoke-direct {p1, p0, p5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    sget p5, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 67
    .line 68
    const-string v1, "bufferSize"

    .line 69
    .line 70
    invoke-static {p5, v1}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    instance-of v1, p4, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    check-cast p4, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    .line 79
    .line 80
    invoke-interface {p4}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    if-nez p4, :cond_0

    .line 85
    .line 86
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    new-instance p5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;

    .line 90
    .line 91
    invoke-direct {p5, p4, p1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 92
    .line 93
    .line 94
    move-object p1, p5

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 97
    .line 98
    const/4 v3, 0x3

    .line 99
    invoke-direct {v1, p4, p1, p5, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    move-object p1, v1

    .line 103
    :goto_0
    sget-object p4, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;->INSTANCE$2:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;

    .line 104
    .line 105
    new-instance p5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-direct {p5, p1, p4, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 112
    .line 113
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance p4, Landroidx/lifecycle/MutableLiveData;

    .line 117
    .line 118
    invoke-direct {p4}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    .line 122
    .line 123
    invoke-direct {v3}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v3, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 127
    .line 128
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 129
    .line 130
    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    iput-object v3, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->dialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 133
    .line 134
    iget-object v0, v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 135
    .line 136
    iget-object v3, v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 137
    .line 138
    new-instance v4, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda6;

    .line 139
    .line 140
    invoke-direct {v4, v2, p2, p3, v0}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda6;-><init>(IJLjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v3, v4}, Lokhttp3/Cookie$Companion;->createMaybe(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    sget-object v4, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 158
    .line 159
    invoke-direct {v6, v3, v5, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/core/Scheduler;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v4}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    new-instance v5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$feedGroupDisposable$1;

    .line 167
    .line 168
    invoke-direct {v5, p1, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$feedGroupDisposable$1;-><init>(Landroidx/lifecycle/MutableLiveData;I)V

    .line 169
    .line 170
    .line 171
    sget-object p1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 172
    .line 173
    sget-object v6, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 174
    .line 175
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 176
    .line 177
    invoke-direct {v7, v5, p1, v6}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v7}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    .line 181
    .line 182
    .line 183
    iput-object v7, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedGroupDisposable:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 184
    .line 185
    iget-object v0, v0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 186
    .line 187
    const-string v3, "feed_group_subscription_join"

    .line 188
    .line 189
    filled-new-array {v3}, [Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    new-instance v5, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 194
    .line 195
    const/4 v6, 0x5

    .line 196
    invoke-direct {v5, p2, p3, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v1, v3, v5}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {p2, v4}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    sget-object p3, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;->INSTANCE$1:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$subscriptionsFlowable$1;

    .line 216
    .line 217
    invoke-static {p5, p2, p3}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-virtual {p2, v4}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    new-instance p3, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$feedGroupDisposable$1;

    .line 226
    .line 227
    invoke-direct {p3, p4, v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$feedGroupDisposable$1;-><init>(Landroidx/lifecycle/MutableLiveData;I)V

    .line 228
    .line 229
    .line 230
    new-instance p4, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 231
    .line 232
    invoke-direct {p4, p3, p1}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, p4}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 236
    .line 237
    .line 238
    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 239
    .line 240
    return-void
.end method


# virtual methods
.method public final doAction$1(Lio/reactivex/rxjava3/core/Completable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    sget-object v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$ProcessingEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$ProcessingEvent;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/16 v1, 0x13

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 26
    .line 27
    new-instance v2, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 28
    .line 29
    invoke-direct {v2, v1, v0}, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final onCleared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->feedGroupDisposable:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
