.class public abstract Lorg/schabi/newpipe/local/feed/service/FeedEventManager;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final eventsFlowable:Lio/reactivex/rxjava3/core/Flowable;

.field public static final ignoreUpstream:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->ignoreUpstream:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    sget-object v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$IdleEvent;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->eventsFlowable:Lio/reactivex/rxjava3/core/Flowable;

    .line 22
    .line 23
    return-void
.end method
