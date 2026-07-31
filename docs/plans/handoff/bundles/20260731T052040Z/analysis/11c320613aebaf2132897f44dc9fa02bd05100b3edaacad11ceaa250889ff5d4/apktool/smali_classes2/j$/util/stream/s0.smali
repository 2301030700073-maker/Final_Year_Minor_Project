.class public final Lj$/util/stream/s0;
.super Ljava/util/concurrent/CountedCompleter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final a:Lj$/util/stream/a;

.field public b:Lj$/util/Spliterator;

.field public final c:J

.field public final d:Lj$/util/concurrent/ConcurrentHashMap;

.field public final e:Lj$/util/stream/r0;

.field public final f:Lj$/util/stream/s0;

.field public g:Lj$/util/stream/g2;


# direct methods
.method public constructor <init>(Lj$/util/stream/a;Lj$/util/Spliterator;Lj$/util/stream/r0;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lj$/util/stream/s0;->a:Lj$/util/stream/a;

    .line 6
    .line 7
    iput-object p2, p0, Lj$/util/stream/s0;->b:Lj$/util/Spliterator;

    .line 8
    .line 9
    invoke-interface {p2}, Lj$/util/Spliterator;->estimateSize()J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    invoke-static {p1, p2}, Lj$/util/stream/d;->e(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    iput-wide p1, p0, Lj$/util/stream/s0;->c:J

    .line 18
    .line 19
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    sget p2, Lj$/util/stream/d;->g:I

    .line 22
    .line 23
    shl-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-direct {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lj$/util/stream/s0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    iput-object p3, p0, Lj$/util/stream/s0;->e:Lj$/util/stream/r0;

    .line 37
    .line 38
    iput-object v0, p0, Lj$/util/stream/s0;->f:Lj$/util/stream/s0;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Lj$/util/stream/s0;Lj$/util/Spliterator;Lj$/util/stream/s0;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 42
    iget-object v0, p1, Lj$/util/stream/s0;->a:Lj$/util/stream/a;

    iput-object v0, p0, Lj$/util/stream/s0;->a:Lj$/util/stream/a;

    .line 43
    iput-object p2, p0, Lj$/util/stream/s0;->b:Lj$/util/Spliterator;

    .line 44
    iget-wide v0, p1, Lj$/util/stream/s0;->c:J

    iput-wide v0, p0, Lj$/util/stream/s0;->c:J

    .line 45
    iget-object p2, p1, Lj$/util/stream/s0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Lj$/util/stream/s0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 46
    iget-object p1, p1, Lj$/util/stream/s0;->e:Lj$/util/stream/r0;

    iput-object p1, p0, Lj$/util/stream/s0;->e:Lj$/util/stream/r0;

    .line 47
    iput-object p3, p0, Lj$/util/stream/s0;->f:Lj$/util/stream/s0;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 9

    .line 1
    iget-object v0, p0, Lj$/util/stream/s0;->b:Lj$/util/Spliterator;

    .line 2
    .line 3
    iget-wide v1, p0, Lj$/util/stream/s0;->c:J

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    .line 7
    .line 8
    .line 9
    move-result-wide v4

    .line 10
    cmp-long v4, v4, v1

    .line 11
    .line 12
    if-lez v4, :cond_3

    .line 13
    .line 14
    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-eqz v4, :cond_3

    .line 19
    .line 20
    new-instance v5, Lj$/util/stream/s0;

    .line 21
    .line 22
    iget-object v6, p0, Lj$/util/stream/s0;->f:Lj$/util/stream/s0;

    .line 23
    .line 24
    invoke-direct {v5, p0, v4, v6}, Lj$/util/stream/s0;-><init>(Lj$/util/stream/s0;Lj$/util/Spliterator;Lj$/util/stream/s0;)V

    .line 25
    .line 26
    .line 27
    new-instance v6, Lj$/util/stream/s0;

    .line 28
    .line 29
    invoke-direct {v6, p0, v0, v5}, Lj$/util/stream/s0;-><init>(Lj$/util/stream/s0;Lj$/util/Spliterator;Lj$/util/stream/s0;)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    invoke-virtual {p0, v7}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 37
    .line 38
    .line 39
    iget-object v8, p0, Lj$/util/stream/s0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 40
    .line 41
    invoke-virtual {v8, v5, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v8, p0, Lj$/util/stream/s0;->f:Lj$/util/stream/s0;

    .line 45
    .line 46
    if-eqz v8, :cond_1

    .line 47
    .line 48
    invoke-virtual {v5, v7}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 49
    .line 50
    .line 51
    iget-object v7, p0, Lj$/util/stream/s0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    iget-object v8, p0, Lj$/util/stream/s0;->f:Lj$/util/stream/s0;

    .line 54
    .line 55
    invoke-virtual {v7, v8, p0, v5}, Lj$/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/4 v8, -0x1

    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0, v8}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {v5, v8}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 70
    .line 71
    move-object v0, v4

    .line 72
    move-object p0, v5

    .line 73
    move-object v5, v6

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move-object p0, v6

    .line 76
    :goto_2
    xor-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-lez v1, :cond_4

    .line 87
    .line 88
    new-instance v1, Lj$/util/stream/r;

    .line 89
    .line 90
    const/16 v2, 0xa

    .line 91
    .line 92
    invoke-direct {v1, v2}, Lj$/util/stream/r;-><init>(I)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lj$/util/stream/s0;->a:Lj$/util/stream/a;

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Lj$/util/stream/a;->v(Lj$/util/Spliterator;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    invoke-virtual {v2, v3, v4, v1}, Lj$/util/stream/a;->F(JLjava/util/function/IntFunction;)Lj$/util/stream/y1;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, p0, Lj$/util/stream/s0;->a:Lj$/util/stream/a;

    .line 106
    .line 107
    invoke-virtual {v2, v0, v1}, Lj$/util/stream/a;->N(Lj$/util/Spliterator;Lj$/util/stream/o5;)Lj$/util/stream/o5;

    .line 108
    .line 109
    .line 110
    invoke-interface {v1}, Lj$/util/stream/y1;->build()Lj$/util/stream/g2;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lj$/util/stream/s0;->g:Lj$/util/stream/g2;

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lj$/util/stream/s0;->b:Lj$/util/Spliterator;

    .line 118
    .line 119
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lj$/util/stream/s0;->g:Lj$/util/stream/g2;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lj$/util/stream/s0;->e:Lj$/util/stream/r0;

    .line 7
    .line 8
    invoke-interface {p1, v1}, Lj$/util/stream/g2;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lj$/util/stream/s0;->g:Lj$/util/stream/g2;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lj$/util/stream/s0;->b:Lj$/util/Spliterator;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lj$/util/stream/s0;->a:Lj$/util/stream/a;

    .line 19
    .line 20
    iget-object v2, p0, Lj$/util/stream/s0;->e:Lj$/util/stream/r0;

    .line 21
    .line 22
    invoke-virtual {v1, p1, v2}, Lj$/util/stream/a;->N(Lj$/util/Spliterator;Lj$/util/stream/o5;)Lj$/util/stream/o5;

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lj$/util/stream/s0;->b:Lj$/util/Spliterator;

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object p1, p0, Lj$/util/stream/s0;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lj$/util/stream/s0;

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method
