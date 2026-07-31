.class public final Lj$/util/stream/e9;
.super Lj$/util/stream/f9;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 1
    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 2
    .line 3
    new-instance v0, Lj$/util/stream/e9;

    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Lj$/util/stream/f9;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/f9;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lj$/util/stream/i9;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lj$/util/stream/i9;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lj$/util/stream/i9;->a:Lj$/util/Spliterator;

    .line 13
    .line 14
    check-cast v0, Lj$/util/Spliterator$OfInt;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lj$/util/stream/f9;->e:Ljava/util/function/IntPredicate;

    .line 23
    .line 24
    iget v2, p0, Lj$/util/stream/f9;->f:I

    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/function/IntPredicate;->test(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget p0, p0, Lj$/util/stream/f9;->f:I

    .line 33
    .line 34
    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    move v0, v1

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lj$/util/stream/i9;->c:Z

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Lj$/util/stream/i9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return p1
.end method

.method public final trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 1
    iget-object v0, p0, Lj$/util/stream/i9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-super {p0}, Lj$/util/stream/i9;->trySplit()Lj$/util/Spliterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lj$/util/Spliterator$OfInt;

    .line 16
    .line 17
    return-object p0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lj$/util/stream/e9;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic trySplit()Lj$/util/b1;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lj$/util/stream/e9;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method
