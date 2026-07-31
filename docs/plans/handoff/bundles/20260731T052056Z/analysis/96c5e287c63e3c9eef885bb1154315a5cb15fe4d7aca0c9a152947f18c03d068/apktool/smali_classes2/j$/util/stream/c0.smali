.class public final synthetic Lj$/util/stream/c0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/stream/DoubleStream;


# instance fields
.field public final synthetic a:Lj$/util/stream/d0;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Lj$/util/stream/b0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lj$/util/stream/b0;

    .line 10
    .line 11
    iget-object p0, p0, Lj$/util/stream/b0;->a:Ljava/util/stream/DoubleStream;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance v0, Lj$/util/stream/c0;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lj$/util/stream/c0;-><init>(Lj$/util/stream/d0;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final synthetic allMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->s()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic anyMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->k()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic average()Ljava/util/OptionalDouble;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->average()Lj$/util/y;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/time/a;->J(Lj$/util/y;)Ljava/util/OptionalDouble;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic boxed()Ljava/util/stream/Stream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->boxed()Lj$/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lj$/util/stream/d0;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic count()J
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->count()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final synthetic distinct()Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->distinct()Lj$/util/stream/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic dropWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->d()Lj$/util/stream/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    instance-of v0, p1, Lj$/util/stream/c0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lj$/util/stream/c0;

    .line 8
    .line 9
    iget-object p1, p1, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final synthetic filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->c()Lj$/util/stream/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic findAny()Ljava/util/OptionalDouble;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->findAny()Lj$/util/y;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/time/a;->J(Lj$/util/y;)Ljava/util/OptionalDouble;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic findFirst()Ljava/util/OptionalDouble;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->findFirst()Lj$/util/y;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/time/a;->J(Lj$/util/y;)Ljava/util/OptionalDouble;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    new-instance v0, Lj$/util/n;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-direct {v0, v1}, Lj$/util/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object p1, v0, Lj$/util/n;->b:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-interface {p0, v0}, Lj$/util/stream/d0;->b(Lj$/util/n;)Lj$/util/stream/d0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final synthetic forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/d0;->forEach(Ljava/util/function/DoubleConsumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/d0;->forEachOrdered(Ljava/util/function/DoubleConsumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic isParallel()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/g;->isParallel()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 26
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    invoke-interface {p0}, Lj$/util/stream/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic iterator()Ljava/util/PrimitiveIterator$OfDouble;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->iterator()Lj$/util/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    instance-of v0, p0, Lj$/util/c0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p0, Lj$/util/c0;

    .line 16
    .line 17
    iget-object p0, p0, Lj$/util/c0;->a:Ljava/util/PrimitiveIterator$OfDouble;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance v0, Lj$/util/d0;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lj$/util/d0;-><init>(Lj$/util/e0;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final synthetic limit(J)Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lj$/util/stream/d0;->limit(J)Lj$/util/stream/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/d0;->map(Ljava/util/function/DoubleUnaryOperator;)Lj$/util/stream/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->w()Lj$/util/stream/IntStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->t()Lj$/util/stream/m1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/l1;->g(Lj$/util/stream/m1;)Ljava/util/stream/LongStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/d0;->mapToObj(Ljava/util/function/DoubleFunction;)Lj$/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic max()Ljava/util/OptionalDouble;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->max()Lj$/util/y;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/time/a;->J(Lj$/util/y;)Ljava/util/OptionalDouble;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic min()Ljava/util/OptionalDouble;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->min()Lj$/util/y;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/time/a;->J(Lj$/util/y;)Ljava/util/OptionalDouble;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic noneMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->y()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/g;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/g;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/f;->g(Lj$/util/stream/g;)Ljava/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/g;->parallel()Lj$/util/stream/g;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/f;->g(Lj$/util/stream/g;)Ljava/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic parallel()Ljava/util/stream/DoubleStream;
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    invoke-interface {p0}, Lj$/util/stream/d0;->parallel()Lj$/util/stream/d0;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/d0;->peek(Ljava/util/function/DoubleConsumer;)Lj$/util/stream/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    invoke-interface {p0, p1, p2, p3}, Lj$/util/stream/d0;->reduce(DLjava/util/function/DoubleBinaryOperator;)D

    move-result-wide p0

    return-wide p0
.end method

.method public final synthetic reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/d0;->reduce(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/y;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/time/a;->J(Lj$/util/y;)Ljava/util/OptionalDouble;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/g;->sequential()Lj$/util/stream/g;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/f;->g(Lj$/util/stream/g;)Ljava/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sequential()Ljava/util/stream/DoubleStream;
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    invoke-interface {p0}, Lj$/util/stream/d0;->sequential()Lj$/util/stream/d0;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic skip(J)Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lj$/util/stream/d0;->skip(J)Lj$/util/stream/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sorted()Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->sorted()Lj$/util/stream/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->spliterator()Lj$/util/r0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/q0;->a(Lj$/util/r0;)Ljava/util/Spliterator$OfDouble;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    invoke-interface {p0}, Lj$/util/stream/g;->spliterator()Lj$/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic sum()D
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->sum()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final summaryStatistics()Ljava/util/DoubleSummaryStatistics;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->summaryStatistics()Lj$/util/u;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/Error;

    .line 7
    .line 8
    const-string v0, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.DoubleSummaryStatistics"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final synthetic takeWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->a()Lj$/util/stream/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->g(Lj$/util/stream/d0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic toArray()[D
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/d0;->toArray()[D

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Lj$/util/stream/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/g;->unordered()Lj$/util/stream/g;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/f;->g(Lj$/util/stream/g;)Ljava/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
