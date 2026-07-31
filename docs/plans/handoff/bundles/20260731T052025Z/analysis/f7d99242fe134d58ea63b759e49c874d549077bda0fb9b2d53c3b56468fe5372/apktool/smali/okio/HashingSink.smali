.class public final Lokio/HashingSink;
.super Lokio/ForwardingSink;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Lokio/BlackholeSink;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final write(Lokio/Buffer;J)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p1, Lokio/Buffer;->size:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    move-wide v4, p2

    .line 9
    invoke-static/range {v0 .. v5}, Lkotlinx/atomicfu/AtomicFU;->checkOffsetAndCount(JJJ)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    :goto_0
    cmp-long p3, v0, v4

    .line 20
    .line 21
    if-gez p3, :cond_0

    .line 22
    .line 23
    sub-long v2, v4, v0

    .line 24
    .line 25
    iget p3, p2, Lokio/Segment;->limit:I

    .line 26
    .line 27
    iget v6, p2, Lokio/Segment;->pos:I

    .line 28
    .line 29
    sub-int/2addr p3, v6

    .line 30
    int-to-long v6, p3

    .line 31
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    long-to-int p3, v2

    .line 36
    iget-object v2, p0, Lokio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v3, p2, Lokio/Segment;->data:[B

    .line 42
    .line 43
    iget v6, p2, Lokio/Segment;->pos:I

    .line 44
    .line 45
    invoke-virtual {v2, v3, v6, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 46
    .line 47
    .line 48
    int-to-long v2, p3

    .line 49
    add-long/2addr v0, v2

    .line 50
    iget-object p2, p2, Lokio/Segment;->next:Lokio/Segment;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Lokio/ForwardingSink;->delegate:Lokio/Sink;

    .line 57
    .line 58
    invoke-interface {p0, p1, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
