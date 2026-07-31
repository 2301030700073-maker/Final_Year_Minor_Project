.class public final Lj$/util/stream/n;
.super Lj$/util/stream/e5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static Q(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/stream/k2;
    .locals 6

    .line 1
    new-instance v4, Lj$/util/stream/j;

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    invoke-direct {v4, v0}, Lj$/util/stream/j;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v3, Lj$/util/stream/j;

    .line 9
    .line 10
    const/16 v0, 0x11

    .line 11
    .line 12
    invoke-direct {v3, v0}, Lj$/util/stream/j;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lj$/util/stream/j;

    .line 16
    .line 17
    const/16 v0, 0x12

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lj$/util/stream/j;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lj$/util/stream/b4;

    .line 32
    .line 33
    sget-object v1, Lj$/util/stream/e7;->REFERENCE:Lj$/util/stream/e7;

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/b4;-><init>(Lj$/util/stream/e7;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0, p1}, Lj$/util/stream/w3;->b(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/util/Collection;

    .line 44
    .line 45
    new-instance p1, Lj$/util/stream/k2;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Lj$/util/stream/k2;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    return-object p1
.end method


# virtual methods
.method public final G(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 3

    .line 1
    sget-object p0, Lj$/util/stream/d7;->DISTINCT:Lj$/util/stream/d7;

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
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/a;->m(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lj$/util/stream/d7;->ORDERED:Lj$/util/stream/d7;

    .line 18
    .line 19
    iget p3, p1, Lj$/util/stream/a;->f:I

    .line 20
    .line 21
    invoke-virtual {p0, p3}, Lj$/util/stream/d7;->u(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-static {p1, p2}, Lj$/util/stream/n;->Q(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/stream/k2;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    new-instance p3, Lj$/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-direct {p3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lj$/nio/file/b0;

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-direct {v1, v2, p0, p3}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    new-instance v2, Lj$/util/stream/q0;

    .line 52
    .line 53
    invoke-direct {v2, v1, v0}, Lj$/util/stream/q0;-><init>(Ljava/util/function/Consumer;Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1, p2}, Lj$/util/stream/r0;->g(Lj$/util/stream/a;Lj$/util/Spliterator;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    new-instance p0, Ljava/util/HashSet;

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-object p1, p0

    .line 79
    :cond_2
    new-instance p0, Lj$/util/stream/k2;

    .line 80
    .line 81
    invoke-direct {p0, p1}, Lj$/util/stream/k2;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    return-object p0
.end method

.method public final H(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 1
    sget-object p0, Lj$/util/stream/d7;->DISTINCT:Lj$/util/stream/d7;

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
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->P(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p0, Lj$/util/stream/d7;->ORDERED:Lj$/util/stream/d7;

    .line 17
    .line 18
    iget v0, p1, Lj$/util/stream/a;->f:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lj$/util/stream/d7;->u(I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-static {p1, p2}, Lj$/util/stream/n;->Q(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/stream/k2;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lj$/util/stream/k2;->spliterator()Lj$/util/Spliterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    new-instance p0, Lj$/util/stream/m7;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->P(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-direct {p2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, p2}, Lj$/util/stream/m7;-><init>(Lj$/util/Spliterator;Lj$/util/concurrent/ConcurrentHashMap;)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method

.method public final J(ILj$/util/stream/o5;)Lj$/util/stream/o5;
    .locals 0

    .line 1
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lj$/util/stream/d7;->DISTINCT:Lj$/util/stream/d7;

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
    sget-object p0, Lj$/util/stream/d7;->SORTED:Lj$/util/stream/d7;

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
    new-instance p0, Lj$/util/stream/l;

    .line 22
    .line 23
    invoke-direct {p0, p2}, Lj$/util/stream/l;-><init>(Lj$/util/stream/o5;)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance p0, Lj$/util/stream/m;

    .line 28
    .line 29
    invoke-direct {p0, p2}, Lj$/util/stream/m;-><init>(Lj$/util/stream/o5;)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method
