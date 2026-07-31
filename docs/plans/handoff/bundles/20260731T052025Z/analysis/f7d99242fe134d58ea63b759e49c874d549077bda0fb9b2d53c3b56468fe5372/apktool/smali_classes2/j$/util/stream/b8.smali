.class public abstract Lj$/util/stream/b8;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final a:Lj$/util/Spliterator;

.field public final b:Z

.field public final c:I

.field public final d:J

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lj$/util/Spliterator;JJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/util/stream/b8;->a:Lj$/util/Spliterator;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p1, p4, v0

    .line 9
    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    iput-boolean v2, p0, Lj$/util/stream/b8;->b:Z

    .line 16
    .line 17
    if-ltz p1, :cond_1

    .line 18
    .line 19
    move-wide v0, p4

    .line 20
    :cond_1
    iput-wide v0, p0, Lj$/util/stream/b8;->d:J

    .line 21
    .line 22
    const/16 v0, 0x80

    .line 23
    .line 24
    iput v0, p0, Lj$/util/stream/b8;->c:I

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    .line 28
    if-ltz p1, :cond_2

    .line 29
    .line 30
    add-long/2addr p2, p4

    .line 31
    :cond_2
    invoke-direct {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lj$/util/stream/b8;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/b8;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lj$/util/stream/b8;->a:Lj$/util/Spliterator;

    .line 39
    iget-boolean p1, p2, Lj$/util/stream/b8;->b:Z

    iput-boolean p1, p0, Lj$/util/stream/b8;->b:Z

    .line 40
    iget-object p1, p2, Lj$/util/stream/b8;->e:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lj$/util/stream/b8;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    iget-wide v0, p2, Lj$/util/stream/b8;->d:J

    iput-wide v0, p0, Lj$/util/stream/b8;->d:J

    .line 42
    iget p1, p2, Lj$/util/stream/b8;->c:I

    iput p1, p0, Lj$/util/stream/b8;->c:I

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 10

    .line 1
    :cond_0
    iget-object v0, p0, Lj$/util/stream/b8;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    iget-boolean v5, p0, Lj$/util/stream/b8;->b:Z

    .line 12
    .line 13
    if-nez v4, :cond_2

    .line 14
    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    return-wide p1

    .line 18
    :cond_1
    return-wide v2

    .line 19
    :cond_2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    cmp-long v4, v6, v2

    .line 24
    .line 25
    if-lez v4, :cond_3

    .line 26
    .line 27
    iget-object v4, p0, Lj$/util/stream/b8;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    .line 29
    sub-long v8, v0, v6

    .line 30
    .line 31
    invoke-virtual {v4, v0, v1, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    :cond_3
    if-eqz v5, :cond_4

    .line 38
    .line 39
    sub-long/2addr p1, v6

    .line 40
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    return-wide p0

    .line 45
    :cond_4
    iget-wide p0, p0, Lj$/util/stream/b8;->d:J

    .line 46
    .line 47
    cmp-long p2, v0, p0

    .line 48
    .line 49
    if-lez p2, :cond_5

    .line 50
    .line 51
    sub-long/2addr v0, p0

    .line 52
    sub-long/2addr v6, v0

    .line 53
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide p0

    .line 57
    return-wide p0

    .line 58
    :cond_5
    return-wide v6
.end method

.method public abstract b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
.end method

.method public final characteristics()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/b8;->a:Lj$/util/Spliterator;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    and-int/lit16 p0, p0, -0x4051

    .line 8
    .line 9
    return p0
.end method

.method public final estimateSize()J
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/stream/b8;->a:Lj$/util/Spliterator;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/Spliterator;->estimateSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final f()Lj$/util/stream/a8;
    .locals 4

    .line 1
    iget-object v0, p0, Lj$/util/stream/b8;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lj$/util/stream/a8;->MAYBE_MORE:Lj$/util/stream/a8;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-boolean p0, p0, Lj$/util/stream/b8;->b:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lj$/util/stream/a8;->UNLIMITED:Lj$/util/stream/a8;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lj$/util/stream/a8;->NO_MORE:Lj$/util/stream/a8;

    .line 24
    .line 25
    return-object p0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 4

    .line 1
    iget-object v0, p0, Lj$/util/stream/b8;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lj$/util/stream/b8;->a:Lj$/util/Spliterator;

    .line 15
    .line 16
    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_1
    invoke-virtual {p0, v0}, Lj$/util/stream/b8;->b(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public bridge synthetic trySplit()Lj$/util/b1;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lj$/util/stream/b8;->trySplit()Lj$/util/Spliterator;

    move-result-object p0

    check-cast p0, Lj$/util/b1;

    return-object p0
.end method

.method public bridge synthetic trySplit()Lj$/util/s0;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lj$/util/stream/b8;->trySplit()Lj$/util/Spliterator;

    move-result-object p0

    check-cast p0, Lj$/util/s0;

    return-object p0
.end method

.method public bridge synthetic trySplit()Lj$/util/v0;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lj$/util/stream/b8;->trySplit()Lj$/util/Spliterator;

    move-result-object p0

    check-cast p0, Lj$/util/v0;

    return-object p0
.end method

.method public bridge synthetic trySplit()Lj$/util/y0;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lj$/util/stream/b8;->trySplit()Lj$/util/Spliterator;

    move-result-object p0

    check-cast p0, Lj$/util/y0;

    return-object p0
.end method
