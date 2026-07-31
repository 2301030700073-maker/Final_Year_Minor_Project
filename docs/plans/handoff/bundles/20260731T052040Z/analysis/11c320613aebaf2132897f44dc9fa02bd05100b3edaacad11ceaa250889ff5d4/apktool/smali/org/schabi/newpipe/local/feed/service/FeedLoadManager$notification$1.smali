.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lio/reactivex/rxjava3/functions/Function;
.implements Lio/reactivex/rxjava3/functions/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 22
    .line 23
    new-instance p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    .line 24
    .line 25
    iget-object p1, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-direct {p0, p1, v0, v2}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;-><init>(III)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object p0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 54
    .line 55
    .line 56
    iget-object p0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_1
    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object p0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    .line 73
    const/4 p1, -0x1

    .line 74
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 75
    .line 76
    .line 77
    iget-object p0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 80
    .line 81
    .line 82
    iget-object p0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

    .line 83
    .line 84
    iget-object v0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    .line 85
    .line 86
    const v1, 0x7f1301d5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    .line 97
    .line 98
    invoke-direct {p0, p1, p1, v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;-><init>(III)V

    .line 99
    .line 100
    .line 101
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_2
    check-cast p1, Lio/reactivex/rxjava3/core/Notification;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object p0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 115
    .line 116
    .line 117
    iget-object v0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

    .line 118
    .line 119
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Notification;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 124
    .line 125
    if-eqz p1, :cond_0

    .line 126
    .line 127
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    const/4 p1, 0x0

    .line 131
    :goto_0
    if-nez p1, :cond_1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    move-object v1, p1

    .line 135
    :goto_1
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 139
    .line 140
    new-instance p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    iget-object v0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-direct {p1, p0, v0, v2}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;-><init>(III)V

    .line 153
    .line 154
    .line 155
    sget-object p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_3
    check-cast p1, Ljava/util/List;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    iget-object v0, v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 167
    .line 168
    iget-object v0, v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 169
    .line 170
    new-instance v1, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    .line 171
    .line 172
    const/16 v2, 0xf

    .line 173
    .line 174
    invoke-direct {v1, v2, p1, p0, v3}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    new-instance p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 181
    .line 182
    invoke-direct {p0, v1, v2}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/16 v1, 0x1b

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, p0, v2}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_CONSUMER:Lio/noties/markwon/BlockHandlerDef;

    .line 33
    .line 34
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    .line 35
    .line 36
    invoke-direct {v2, v1, v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;-><init>(Lio/reactivex/rxjava3/core/Completable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 40
    .line 41
    invoke-virtual {v2, p0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Ljava/lang/Iterable;

    .line 65
    .line 66
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;

    .line 71
    .line 72
    invoke-direct {p1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;-><init>(Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;Ljava/util/ArrayList;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-direct {v0, p1, v1, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadState;-><init>(Ljava/lang/String;II)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;->this$0:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->cancelSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :goto_0
    xor-int/lit8 p0, p0, 0x1

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->cancelSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    goto :goto_0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
