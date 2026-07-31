.class public final Lj$/util/stream/p2;
.super Lj$/util/stream/q2;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/util/stream/e2;


# virtual methods
.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/stream/v3;->s(Lj$/util/stream/e2;Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic k(JJLjava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/v3;->v(Lj$/util/stream/e2;JJ)Lj$/util/stream/e2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final synthetic m([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Long;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lj$/util/stream/v3;->p(Lj$/util/stream/e2;[Ljava/lang/Long;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final newArray(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [J

    .line 2
    .line 3
    return-object p0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 7
    new-instance v0, Lj$/util/stream/g3;

    .line 8
    invoke-direct {v0, p0}, Lj$/util/stream/j3;-><init>(Lj$/util/stream/g2;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/b1;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/g3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lj$/util/stream/j3;-><init>(Lj$/util/stream/g2;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
