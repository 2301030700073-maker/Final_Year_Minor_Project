.class public final Lj$/util/stream/s0;
.super Ljava/util/concurrent/CountedCompleter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public a:Lj$/util/Spliterator;

.field public final b:Lj$/util/stream/l5;

.field public final c:Lj$/util/stream/a;

.field public d:J


# direct methods
.method public constructor <init>(Lj$/util/stream/a;Lj$/util/Spliterator;Lj$/util/stream/l5;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 20
    iput-object p3, p0, Lj$/util/stream/s0;->b:Lj$/util/stream/l5;

    .line 21
    iput-object p1, p0, Lj$/util/stream/s0;->c:Lj$/util/stream/a;

    .line 22
    iput-object p2, p0, Lj$/util/stream/s0;->a:Lj$/util/Spliterator;

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lj$/util/stream/s0;->d:J

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/s0;Lj$/util/Spliterator;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lj$/util/stream/s0;->a:Lj$/util/Spliterator;

    .line 5
    .line 6
    iget-object p2, p1, Lj$/util/stream/s0;->b:Lj$/util/stream/l5;

    .line 7
    .line 8
    iput-object p2, p0, Lj$/util/stream/s0;->b:Lj$/util/stream/l5;

    .line 9
    .line 10
    iget-wide v0, p1, Lj$/util/stream/s0;->d:J

    .line 11
    .line 12
    iput-wide v0, p0, Lj$/util/stream/s0;->d:J

    .line 13
    .line 14
    iget-object p1, p1, Lj$/util/stream/s0;->c:Lj$/util/stream/a;

    .line 15
    .line 16
    iput-object p1, p0, Lj$/util/stream/s0;->c:Lj$/util/stream/a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 11

    .line 1
    iget-object v0, p0, Lj$/util/stream/s0;->a:Lj$/util/Spliterator;

    .line 2
    .line 3
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, p0, Lj$/util/stream/s0;->d:J

    .line 8
    .line 9
    const-wide/16 v5, 0x0

    .line 10
    .line 11
    cmp-long v5, v3, v5

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    invoke-static {v1, v2}, Lj$/util/stream/d;->e(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    iput-wide v3, p0, Lj$/util/stream/s0;->d:J

    .line 20
    .line 21
    :cond_0
    sget-object v5, Lj$/util/stream/z6;->SHORT_CIRCUIT:Lj$/util/stream/z6;

    .line 22
    .line 23
    iget-object v6, p0, Lj$/util/stream/s0;->c:Lj$/util/stream/a;

    .line 24
    .line 25
    iget v6, v6, Lj$/util/stream/a;->f:I

    .line 26
    .line 27
    invoke-virtual {v5, v6}, Lj$/util/stream/z6;->u(I)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    iget-object v6, p0, Lj$/util/stream/s0;->b:Lj$/util/stream/l5;

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    :goto_0
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-interface {v6}, Lj$/util/stream/l5;->e()Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-nez v8, :cond_5

    .line 41
    .line 42
    :cond_1
    cmp-long v1, v1, v3

    .line 43
    .line 44
    if-lez v1, :cond_4

    .line 45
    .line 46
    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    new-instance v2, Lj$/util/stream/s0;

    .line 54
    .line 55
    invoke-direct {v2, p0, v1}, Lj$/util/stream/s0;-><init>(Lj$/util/stream/s0;Lj$/util/Spliterator;)V

    .line 56
    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    invoke-virtual {p0, v8}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 60
    .line 61
    .line 62
    if-eqz v7, :cond_3

    .line 63
    .line 64
    move-object v0, v1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v10, v2

    .line 67
    move-object v2, p0

    .line 68
    move-object p0, v10

    .line 69
    :goto_1
    xor-int/lit8 v7, v7, 0x1

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    move-object p0, v2

    .line 79
    move-wide v1, v8

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    :goto_2
    iget-object v1, p0, Lj$/util/stream/s0;->c:Lj$/util/stream/a;

    .line 82
    .line 83
    invoke-virtual {v1, v0, v6}, Lj$/util/stream/a;->j(Lj$/util/Spliterator;Lj$/util/stream/l5;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lj$/util/stream/s0;->a:Lj$/util/Spliterator;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    .line 90
    .line 91
    .line 92
    return-void
.end method
