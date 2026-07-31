.class public final Lj$/util/stream/i6;
.super Lj$/util/stream/z0;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public final G(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 1

    .line 1
    sget-object p0, Lj$/util/stream/d7;->SORTED:Lj$/util/stream/d7;

    .line 2
    .line 3
    iget v0, p1, Lj$/util/stream/a;->f:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lj$/util/stream/d7;->u(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-virtual {p1, p2, p0, p3}, Lj$/util/stream/a;->m(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    invoke-virtual {p1, p2, p0, p3}, Lj$/util/stream/a;->m(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lj$/util/stream/c2;

    .line 23
    .line 24
    invoke-interface {p0}, Lj$/util/stream/f2;->b()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, [I

    .line 29
    .line 30
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lj$/util/stream/b3;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lj$/util/stream/b3;-><init>([I)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public final J(ILj$/util/stream/o5;)Lj$/util/stream/o5;
    .locals 0

    .line 1
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lj$/util/stream/d7;->SORTED:Lj$/util/stream/d7;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lj$/util/stream/d7;->u(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return-object p2

    .line 13
    :cond_0
    sget-object p0, Lj$/util/stream/d7;->SIZED:Lj$/util/stream/d7;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lj$/util/stream/d7;->u(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    new-instance p0, Lj$/util/stream/n6;

    .line 22
    .line 23
    invoke-direct {p0, p2}, Lj$/util/stream/i5;-><init>(Lj$/util/stream/o5;)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance p0, Lj$/util/stream/f6;

    .line 28
    .line 29
    invoke-direct {p0, p2}, Lj$/util/stream/i5;-><init>(Lj$/util/stream/o5;)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method
