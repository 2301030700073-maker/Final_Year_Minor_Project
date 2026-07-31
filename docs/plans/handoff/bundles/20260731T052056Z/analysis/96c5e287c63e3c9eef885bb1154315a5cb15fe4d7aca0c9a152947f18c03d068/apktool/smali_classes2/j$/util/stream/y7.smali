.class public abstract Lj$/util/stream/y7;
.super Lj$/util/stream/b8;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/util/a1;


# virtual methods
.method public final forEachRemaining(Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lj$/util/stream/b8;->f()Lj$/util/stream/a8;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lj$/util/stream/a8;->NO_MORE:Lj$/util/stream/a8;

    .line 10
    .line 11
    if-eq v1, v2, :cond_5

    .line 12
    .line 13
    sget-object v2, Lj$/util/stream/a8;->MAYBE_MORE:Lj$/util/stream/a8;

    .line 14
    .line 15
    iget-object v3, p0, Lj$/util/stream/b8;->a:Lj$/util/Spliterator;

    .line 16
    .line 17
    if-ne v1, v2, :cond_4

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lj$/util/stream/y7;->j()Lj$/util/stream/f7;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    iput v1, v0, Lj$/util/stream/f7;->b:I

    .line 28
    .line 29
    :goto_1
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    move-wide v4, v1

    .line 32
    :cond_1
    move-object v6, v3

    .line 33
    check-cast v6, Lj$/util/a1;

    .line 34
    .line 35
    invoke-interface {v6, v0}, Lj$/util/a1;->tryAdvance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    const-wide/16 v6, 0x1

    .line 42
    .line 43
    add-long/2addr v4, v6

    .line 44
    const-wide/16 v6, 0x80

    .line 45
    .line 46
    cmp-long v6, v4, v6

    .line 47
    .line 48
    if-ltz v6, :cond_1

    .line 49
    .line 50
    :cond_2
    cmp-long v1, v4, v1

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {p0, v4, v5}, Lj$/util/stream/b8;->a(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, p1, v1, v2}, Lj$/util/stream/f7;->a(Ljava/lang/Object;J)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    check-cast v3, Lj$/util/a1;

    .line 64
    .line 65
    invoke-interface {v3, p1}, Lj$/util/a1;->forEachRemaining(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lj$/util/stream/y7;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lj$/util/stream/y7;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lj$/util/stream/y7;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract g(Ljava/lang/Object;)V
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    .line 1
    invoke-static {p0}, Lj$/time/a;->n(Lj$/util/Spliterator;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/time/a;->p(Lj$/util/Spliterator;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public abstract j()Lj$/util/stream/f7;
.end method

.method public final tryAdvance(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    :cond_0
    invoke-virtual {p0}, Lj$/util/stream/b8;->f()Lj$/util/stream/a8;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lj$/util/stream/a8;->NO_MORE:Lj$/util/stream/a8;

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lj$/util/stream/b8;->a:Lj$/util/Spliterator;

    .line 13
    .line 14
    check-cast v0, Lj$/util/a1;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lj$/util/a1;->tryAdvance(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-wide/16 v0, 0x1

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lj$/util/stream/b8;->a(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long v0, v2, v0

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lj$/util/stream/y7;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lj$/util/stream/y7;->tryAdvance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lj$/util/stream/y7;->tryAdvance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lj$/util/stream/y7;->tryAdvance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
