.class public final Lokio/Timeout$Companion$NONE$1;
.super Lokio/Timeout;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public final deadlineNanoTime(J)Lokio/Timeout;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final throwIfReached()V
    .locals 0

    .line 1
    return-void
.end method

.method public final timeout(J)Lokio/Timeout;
    .locals 0

    .line 1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
