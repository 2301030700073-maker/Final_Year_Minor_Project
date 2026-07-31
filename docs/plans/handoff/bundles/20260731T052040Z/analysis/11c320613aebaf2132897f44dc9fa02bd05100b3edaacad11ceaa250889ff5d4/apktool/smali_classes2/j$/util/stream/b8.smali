.class public final Lj$/util/stream/b8;
.super Lj$/util/stream/c8;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/y0;
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public f:J


# virtual methods
.method public final accept(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lj$/util/stream/b8;->f:J

    .line 2
    .line 3
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/a0;->a(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Lj$/util/function/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 1
    check-cast p1, Lj$/util/y0;

    .line 2
    .line 3
    new-instance v0, Lj$/util/stream/b8;

    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Lj$/util/stream/f8;-><init>(Lj$/util/Spliterator;Lj$/util/stream/f8;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/a0;->e(Lj$/util/y0;Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/function/LongConsumer;

    .line 2
    .line 3
    iget-wide v0, p0, Lj$/util/stream/b8;->f:J

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j(I)Lj$/util/stream/j7;
    .locals 0

    .line 1
    new-instance p0, Lj$/util/stream/i7;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lj$/util/stream/i7;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/a0;->h(Lj$/util/y0;Ljava/util/function/Consumer;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
