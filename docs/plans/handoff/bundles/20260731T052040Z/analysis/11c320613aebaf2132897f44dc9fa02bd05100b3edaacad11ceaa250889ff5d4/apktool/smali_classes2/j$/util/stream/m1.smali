.class public final synthetic Lj$/util/stream/m1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/stream/LongStream;


# instance fields
.field public final synthetic a:Lj$/util/stream/LongStream;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/LongStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;
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
    instance-of v0, p0, Lj$/util/stream/l1;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lj$/util/stream/l1;

    .line 10
    .line 11
    iget-object p0, p0, Lj$/util/stream/l1;->a:Ljava/util/stream/LongStream;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance v0, Lj$/util/stream/m1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lj$/util/stream/m1;-><init>(Lj$/util/stream/LongStream;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final synthetic allMatch(Ljava/util/function/LongPredicate;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->n()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic anyMatch(Ljava/util/function/LongPredicate;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->x()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic asDoubleStream()Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->asDoubleStream()Lj$/util/stream/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/d0;->f(Lj$/util/stream/e0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic average()Ljava/util/OptionalDouble;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->average()Lj$/util/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->n(Lj$/util/b0;)Ljava/util/OptionalDouble;

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->boxed()Lj$/util/stream/Stream;

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/BaseStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lj$/util/stream/LongStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->count()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final synthetic distinct()Ljava/util/stream/LongStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->distinct()Lj$/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic dropWhile(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->c()Lj$/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    instance-of v0, p1, Lj$/util/stream/m1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lj$/util/stream/m1;

    .line 8
    .line 9
    iget-object p1, p1, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

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

.method public final synthetic filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->b()Lj$/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic findAny()Ljava/util/OptionalLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->findAny()Lj$/util/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->p(Lj$/util/c0;)Ljava/util/OptionalLong;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic findFirst()Ljava/util/OptionalLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->findFirst()Lj$/util/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->p(Lj$/util/c0;)Ljava/util/OptionalLong;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    new-instance v0, Lj$/desugar/sun/nio/fs/g;

    .line 4
    .line 5
    const/16 v1, 0xe

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/g;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lj$/util/stream/LongStream;->d(Lj$/desugar/sun/nio/fs/g;)Lj$/util/stream/LongStream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final synthetic forEach(Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/LongStream;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/BaseStream;->isParallel()Z

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    invoke-interface {p0}, Lj$/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic iterator()Ljava/util/PrimitiveIterator$OfLong;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->iterator()Lj$/util/o0;

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
    instance-of v0, p0, Lj$/util/m0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p0, Lj$/util/m0;

    .line 16
    .line 17
    iget-object p0, p0, Lj$/util/m0;->a:Ljava/util/PrimitiveIterator$OfLong;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance v0, Lj$/util/n0;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lj$/util/n0;-><init>(Lj$/util/o0;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final synthetic limit(J)Ljava/util/stream/LongStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lj$/util/stream/LongStream;->limit(J)Lj$/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->w()Lj$/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->g()Lj$/util/stream/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/d0;->f(Lj$/util/stream/e0;)Ljava/util/stream/DoubleStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->z()Lj$/util/stream/IntStream;

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

.method public final synthetic mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;

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

.method public final synthetic max()Ljava/util/OptionalLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->max()Lj$/util/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->p(Lj$/util/c0;)Ljava/util/OptionalLong;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic min()Ljava/util/OptionalLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->min()Lj$/util/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->p(Lj$/util/c0;)Ljava/util/OptionalLong;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic noneMatch(Ljava/util/function/LongPredicate;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->q()Z

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/f;->f(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/BaseStream;->parallel()Lj$/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/f;->f(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic parallel()Ljava/util/stream/LongStream;
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    invoke-interface {p0}, Lj$/util/stream/LongStream;->parallel()Lj$/util/stream/LongStream;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/LongStream;->peek(Ljava/util/function/LongConsumer;)Lj$/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic reduce(JLjava/util/function/LongBinaryOperator;)J
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    invoke-interface {p0, p1, p2, p3}, Lj$/util/stream/LongStream;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final synthetic reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/stream/LongStream;->reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/a0;->p(Lj$/util/c0;)Ljava/util/OptionalLong;

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/BaseStream;->sequential()Lj$/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/f;->f(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sequential()Ljava/util/stream/LongStream;
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    invoke-interface {p0}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic skip(J)Ljava/util/stream/LongStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lj$/util/stream/LongStream;->skip(J)Lj$/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sorted()Ljava/util/stream/LongStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->sorted()Lj$/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator$OfLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/y0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/x0;->a(Lj$/util/y0;)Ljava/util/Spliterator$OfLong;

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    invoke-interface {p0}, Lj$/util/stream/BaseStream;->spliterator()Lj$/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic sum()J
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->sum()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final summaryStatistics()Ljava/util/LongSummaryStatistics;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->summaryStatistics()Lj$/util/z;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/Error;

    .line 7
    .line 8
    const-string v0, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.LongSummaryStatistics"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final synthetic takeWhile(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->a()Lj$/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/m1;->f(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic toArray()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/LongStream;->toArray()[J

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
    iget-object p0, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/BaseStream;->unordered()Lj$/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/f;->f(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
