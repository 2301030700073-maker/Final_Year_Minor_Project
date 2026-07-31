.class public final Lokhttp3/tls/internal/der/DerReader$CountingSource;
.super Lokio/ForwardingSource;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public bytesRead:J


# virtual methods
.method public final read(Lokio/Buffer;J)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokio/ForwardingSource;->delegate:Lokio/Source;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    cmp-long p3, p1, v0

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-wide v0, p0, Lokhttp3/tls/internal/der/DerReader$CountingSource;->bytesRead:J

    .line 18
    .line 19
    add-long/2addr v0, p1

    .line 20
    iput-wide v0, p0, Lokhttp3/tls/internal/der/DerReader$CountingSource;->bytesRead:J

    .line 21
    .line 22
    return-wide p1
.end method
