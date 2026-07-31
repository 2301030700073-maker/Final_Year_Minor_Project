.class public final Lj$/util/stream/w7;
.super Lj$/util/stream/y7;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/util/u0;
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public e:I


# virtual methods
.method public final accept(I)V
    .locals 0

    .line 1
    iput p1, p0, Lj$/util/stream/w7;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/time/a;->c(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/e;

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
    check-cast p1, Lj$/util/u0;

    .line 2
    .line 3
    new-instance v0, Lj$/util/stream/w7;

    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Lj$/util/stream/b8;-><init>(Lj$/util/Spliterator;Lj$/util/stream/b8;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/time/a;->j(Lj$/util/u0;Ljava/util/function/Consumer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/function/IntConsumer;

    .line 2
    .line 3
    iget p0, p0, Lj$/util/stream/w7;->e:I

    .line 4
    .line 5
    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j()Lj$/util/stream/f7;
    .locals 0

    .line 1
    new-instance p0, Lj$/util/stream/d7;

    .line 2
    .line 3
    invoke-direct {p0}, Lj$/util/stream/d7;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/time/a;->A(Lj$/util/u0;Ljava/util/function/Consumer;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
