.class public final synthetic Lj$/util/stream/c0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/stream/e0;


# instance fields
.field public final synthetic a:Ljava/util/stream/DoubleStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/DoubleStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;
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
    instance-of v0, p0, Lj$/util/stream/d0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lj$/util/stream/d0;

    .line 10
    .line 11
    iget-object p0, p0, Lj$/util/stream/d0;->a:Lj$/util/stream/e0;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance v0, Lj$/util/stream/c0;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lj$/util/stream/c0;-><init>(Ljava/util/stream/DoubleStream;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final synthetic B()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/DoubleStream;->noneMatch(Ljava/util/function/DoublePredicate;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final synthetic a()Lj$/util/stream/e0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/DoubleStream;->takeWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final synthetic average()Lj$/util/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->j(Ljava/util/OptionalDouble;)Lj$/util/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic b()Lj$/util/stream/e0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/DoubleStream;->filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final synthetic boxed()Lj$/util/stream/Stream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->boxed()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/a7;->f(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic c()Lj$/util/stream/e0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/DoubleStream;->dropWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final synthetic close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Ljava/util/stream/DoubleStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

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
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->count()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final d(Lj$/desugar/sun/nio/fs/g;)Lj$/util/stream/e0;
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    new-instance v0, Lj$/desugar/sun/nio/fs/g;

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/g;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-interface {p0, v0}, Ljava/util/stream/DoubleStream;->flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final synthetic distinct()Lj$/util/stream/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->distinct()Ljava/util/stream/DoubleStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

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
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

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
    iget-object p1, p1, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

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

.method public final synthetic findAny()Lj$/util/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->findAny()Ljava/util/OptionalDouble;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->j(Ljava/util/OptionalDouble;)Lj$/util/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic findFirst()Lj$/util/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->findFirst()Ljava/util/OptionalDouble;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->j(Ljava/util/OptionalDouble;)Lj$/util/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/DoubleStream;->forEachOrdered(Ljava/util/function/DoubleConsumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

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

.method public final synthetic i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/DoubleStream;->anyMatch(Ljava/util/function/DoublePredicate;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final synthetic isParallel()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->isParallel()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic iterator()Lj$/util/g0;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

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
    instance-of v0, p0, Lj$/util/f0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p0, Lj$/util/f0;

    .line 16
    .line 17
    iget-object p0, p0, Lj$/util/f0;->a:Lj$/util/g0;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance v0, Lj$/util/e0;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lj$/util/e0;-><init>(Ljava/util/PrimitiveIterator$OfDouble;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 26
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic limit(J)Lj$/util/stream/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/stream/DoubleStream;->limit(J)Ljava/util/stream/DoubleStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic map(Ljava/util/function/DoubleUnaryOperator;)Lj$/util/stream/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/DoubleStream;->map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic mapToObj(Ljava/util/function/DoubleFunction;)Lj$/util/stream/Stream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/DoubleStream;->mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/a7;->f(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic max()Lj$/util/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->max()Ljava/util/OptionalDouble;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->j(Ljava/util/OptionalDouble;)Lj$/util/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic min()Lj$/util/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->min()Ljava/util/OptionalDouble;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->j(Ljava/util/OptionalDouble;)Lj$/util/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/e;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic parallel()Lj$/util/stream/BaseStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->parallel()Ljava/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/e;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic parallel()Lj$/util/stream/e0;
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->parallel()Ljava/util/stream/DoubleStream;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic peek(Ljava/util/function/DoubleConsumer;)Lj$/util/stream/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/DoubleStream;->peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

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
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/stream/DoubleStream;->reduce(DLjava/util/function/DoubleBinaryOperator;)D

    move-result-wide p0

    return-wide p0
.end method

.method public final synthetic reduce(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/DoubleStream;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->j(Ljava/util/OptionalDouble;)Lj$/util/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic s()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/DoubleStream;->allMatch(Ljava/util/function/DoublePredicate;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final synthetic sequential()Lj$/util/stream/BaseStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/e;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sequential()Lj$/util/stream/e0;
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic skip(J)Lj$/util/stream/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/stream/DoubleStream;->skip(J)Ljava/util/stream/DoubleStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sorted()Lj$/util/stream/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->sorted()Ljava/util/stream/DoubleStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/c0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/e0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic spliterator()Lj$/util/Spliterator;
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lj$/util/c1;->a(Ljava/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic spliterator()Lj$/util/t0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/r0;->a(Ljava/util/Spliterator$OfDouble;)Lj$/util/t0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sum()D
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->sum()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final summaryStatistics()Lj$/util/w;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->summaryStatistics()Ljava/util/DoubleSummaryStatistics;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/Error;

    .line 7
    .line 8
    const-string v0, "Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final synthetic toArray()[D
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->toArray()[D

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic u()Lj$/util/stream/LongStream;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/DoubleStream;->mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lj$/util/stream/l1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/LongStream;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->unordered()Ljava/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/e;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic y()Lj$/util/stream/IntStream;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/c0;->a:Ljava/util/stream/DoubleStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/DoubleStream;->mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Lj$/util/stream/IntStream;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
