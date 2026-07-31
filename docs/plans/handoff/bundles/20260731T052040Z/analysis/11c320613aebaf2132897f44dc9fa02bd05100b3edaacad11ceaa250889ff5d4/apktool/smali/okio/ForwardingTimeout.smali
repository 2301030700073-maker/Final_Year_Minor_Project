.class public final Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public delegate:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final clearDeadline()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final clearTimeout()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final deadlineNanoTime(J)Lokio/Timeout;
    .locals 0

    .line 8
    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    invoke-virtual {p0, p1, p2}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final hasDeadline()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final throwIfReached()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/Timeout;->throwIfReached()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final timeout(J)Lokio/Timeout;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lokio/ForwardingTimeout;->delegate:Lokio/Timeout;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lokio/Timeout;->timeout(J)Lokio/Timeout;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
