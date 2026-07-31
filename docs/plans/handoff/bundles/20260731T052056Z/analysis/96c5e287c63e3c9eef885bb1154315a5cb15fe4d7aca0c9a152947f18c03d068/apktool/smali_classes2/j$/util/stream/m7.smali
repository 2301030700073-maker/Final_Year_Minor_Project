.class public final Lj$/util/stream/m7;
.super Lj$/util/stream/b7;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/util/u0;


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    new-instance v0, Lj$/util/stream/q6;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/util/stream/u6;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lj$/util/stream/b7;->h:Lj$/util/stream/c;

    .line 7
    .line 8
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lj$/util/stream/l7;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v0, v2}, Lj$/util/stream/l7;-><init>(Ljava/util/function/IntConsumer;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lj$/util/stream/b7;->b:Lj$/util/stream/a;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lj$/util/stream/a;->R(Lj$/util/stream/l5;)Lj$/util/stream/l5;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lj$/util/stream/b7;->e:Lj$/util/stream/l5;

    .line 24
    .line 25
    new-instance v0, Lj$/util/n;

    .line 26
    .line 27
    const/16 v1, 0xc

    .line 28
    .line 29
    invoke-direct {v0, v1, p0}, Lj$/util/n;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lj$/util/stream/b7;->f:Ljava/util/function/BooleanSupplier;

    .line 33
    .line 34
    return-void
.end method

.method public final e(Lj$/util/Spliterator;)Lj$/util/stream/b7;
    .locals 2

    .line 1
    new-instance v0, Lj$/util/stream/m7;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/util/stream/b7;->b:Lj$/util/stream/a;

    .line 4
    .line 5
    iget-boolean p0, p0, Lj$/util/stream/b7;->a:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p0}, Lj$/util/stream/b7;-><init>(Lj$/util/stream/a;Lj$/util/Spliterator;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/m7;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lj$/time/a;->j(Lj$/util/u0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/util/stream/b7;->h:Lj$/util/stream/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lj$/util/stream/b7;->i:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lj$/util/stream/b7;->c()V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v0, Lj$/util/stream/l7;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p1, v1}, Lj$/util/stream/l7;-><init>(Ljava/util/function/IntConsumer;I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lj$/util/stream/b7;->d:Lj$/util/Spliterator;

    .line 25
    .line 26
    iget-object v1, p0, Lj$/util/stream/b7;->b:Lj$/util/stream/a;

    .line 27
    .line 28
    invoke-virtual {v1, p1, v0}, Lj$/util/stream/a;->Q(Lj$/util/Spliterator;Lj$/util/stream/l5;)Lj$/util/stream/l5;

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lj$/util/stream/b7;->i:Z

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/m7;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    return-void
.end method

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 52
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/m7;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lj$/time/a;->A(Lj$/util/u0;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lj$/util/stream/b7;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lj$/util/stream/b7;->h:Lj$/util/stream/c;

    .line 11
    .line 12
    check-cast v1, Lj$/util/stream/q6;

    .line 13
    .line 14
    iget-wide v2, p0, Lj$/util/stream/b7;->g:J

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lj$/util/stream/u6;->r(J)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    iget v4, v1, Lj$/util/stream/c;->c:I

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    iget-object p0, v1, Lj$/util/stream/u6;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, [I

    .line 29
    .line 30
    long-to-int v1, v2

    .line 31
    aget p0, p0, v1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v4, v1, Lj$/util/stream/u6;->f:[Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, [[I

    .line 37
    .line 38
    aget-object v4, v4, p0

    .line 39
    .line 40
    iget-object v1, v1, Lj$/util/stream/c;->d:[J

    .line 41
    .line 42
    aget-wide v5, v1, p0

    .line 43
    .line 44
    sub-long/2addr v2, v5

    .line 45
    long-to-int p0, v2

    .line 46
    aget p0, v4, p0

    .line 47
    .line 48
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return v0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 0

    .line 9
    invoke-super {p0}, Lj$/util/stream/b7;->trySplit()Lj$/util/Spliterator;

    move-result-object p0

    check-cast p0, Lj$/util/u0;

    return-object p0
.end method

.method public final trySplit()Lj$/util/a1;
    .locals 0

    .line 8
    invoke-super {p0}, Lj$/util/stream/b7;->trySplit()Lj$/util/Spliterator;

    move-result-object p0

    check-cast p0, Lj$/util/u0;

    return-object p0
.end method

.method public final trySplit()Lj$/util/u0;
    .locals 0

    .line 1
    invoke-super {p0}, Lj$/util/stream/b7;->trySplit()Lj$/util/Spliterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lj$/util/u0;

    .line 6
    .line 7
    return-object p0
.end method
