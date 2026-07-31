.class public abstract Lio/reactivex/rxjava3/internal/subscriptions/BasicQueueSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/operators/QueueSubscription;


# static fields
.field private static final serialVersionUID:J = -0x5c95ffaa2e3a1e66L


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "Should not be called!"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
