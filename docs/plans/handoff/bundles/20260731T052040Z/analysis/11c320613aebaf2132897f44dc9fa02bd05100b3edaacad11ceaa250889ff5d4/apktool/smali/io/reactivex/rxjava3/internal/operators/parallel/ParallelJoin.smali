.class public final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;
.super Lio/reactivex/rxjava3/core/Flowable;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final prefetch:I

.field public final source:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->source:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;

    .line 5
    .line 6
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->prefetch:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscription;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->prefetch:I

    .line 5
    .line 6
    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;-><init>(Lorg/reactivestreams/Subscriber;II)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase;->subscribers:[Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber;

    .line 13
    .line 14
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;->source:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;->subscribe([Lorg/reactivestreams/Subscriber;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
