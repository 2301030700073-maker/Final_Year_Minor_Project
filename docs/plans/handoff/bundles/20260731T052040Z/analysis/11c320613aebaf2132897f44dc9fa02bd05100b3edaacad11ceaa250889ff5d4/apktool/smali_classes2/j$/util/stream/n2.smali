.class public final Lj$/util/stream/n2;
.super Lj$/util/stream/q2;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/stream/a2;


# virtual methods
.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/stream/w3;->q(Lj$/util/stream/a2;Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic k(JJLjava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/w3;->t(Lj$/util/stream/a2;JJ)Lj$/util/stream/a2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final synthetic n([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Double;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lj$/util/stream/w3;->n(Lj$/util/stream/a2;[Ljava/lang/Double;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final newArray(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [D

    .line 2
    .line 3
    return-object p0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 7
    new-instance v0, Lj$/util/stream/e3;

    .line 8
    invoke-direct {v0, p0}, Lj$/util/stream/j3;-><init>(Lj$/util/stream/g2;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/b1;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/e3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lj$/util/stream/j3;-><init>(Lj$/util/stream/g2;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
