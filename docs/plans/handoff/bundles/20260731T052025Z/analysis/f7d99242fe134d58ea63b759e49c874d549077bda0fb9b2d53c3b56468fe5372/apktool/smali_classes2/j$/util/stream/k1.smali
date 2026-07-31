.class public final synthetic Lj$/util/stream/k1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/util/stream/m1;


# instance fields
.field public final synthetic a:Ljava/util/stream/LongStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/LongStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;
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
    iget-object p0, p0, Lj$/util/stream/l1;->a:Lj$/util/stream/m1;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance v0, Lj$/util/stream/k1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lj$/util/stream/k1;-><init>(Ljava/util/stream/LongStream;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final synthetic C()Lj$/util/stream/IntStream;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/LongStream;->mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;

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

.method public final synthetic a()Lj$/util/stream/m1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/LongStream;->takeWhile(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final synthetic asDoubleStream()Lj$/util/stream/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->asDoubleStream()Ljava/util/stream/DoubleStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/b0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/d0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic average()Lj$/util/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->average()Ljava/util/OptionalDouble;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/c;->n(Ljava/util/OptionalDouble;)Lj$/util/z;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic b()Lj$/util/stream/m1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/LongStream;->filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->boxed()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/w6;->f(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic c()Lj$/util/stream/m1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/LongStream;->dropWhile(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Ljava/util/stream/LongStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->count()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final d(Lj$/desugar/sun/nio/fs/g;)Lj$/util/stream/m1;
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    new-instance v0, Lj$/desugar/sun/nio/fs/g;

    .line 4
    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lj$/desugar/sun/nio/fs/g;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-interface {p0, v0}, Ljava/util/stream/LongStream;->flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final synthetic distinct()Lj$/util/stream/m1;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->distinct()Ljava/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    instance-of v0, p1, Lj$/util/stream/k1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lj$/util/stream/k1;

    .line 8
    .line 9
    iget-object p1, p1, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->findAny()Ljava/util/OptionalLong;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/c;->p(Ljava/util/OptionalLong;)Lj$/util/b0;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->findFirst()Ljava/util/OptionalLong;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/c;->p(Ljava/util/OptionalLong;)Lj$/util/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic forEach(Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/LongStream;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic g()Lj$/util/stream/d0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/LongStream;->mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lj$/util/stream/b0;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/d0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final synthetic hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/LongStream;->noneMatch(Ljava/util/function/LongPredicate;)Z

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

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

.method public final synthetic iterator()Lj$/util/n0;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->iterator()Ljava/util/PrimitiveIterator$OfLong;

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
    iget-object p0, p0, Lj$/util/m0;->a:Lj$/util/n0;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance v0, Lj$/util/l0;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lj$/util/l0;-><init>(Ljava/util/PrimitiveIterator$OfLong;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 26
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    invoke-interface {p0}, Ljava/util/stream/LongStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic limit(J)Lj$/util/stream/m1;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/stream/LongStream;->limit(J)Ljava/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/w6;->f(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->max()Ljava/util/OptionalLong;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/c;->p(Ljava/util/OptionalLong;)Lj$/util/b0;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->min()Ljava/util/OptionalLong;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/c;->p(Ljava/util/OptionalLong;)Lj$/util/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic onClose(Ljava/lang/Runnable;)Lj$/util/stream/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/e;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/g;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/LongStream;->anyMatch(Ljava/util/function/LongPredicate;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final synthetic parallel()Lj$/util/stream/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->parallel()Ljava/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/e;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/g;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic parallel()Lj$/util/stream/m1;
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    invoke-interface {p0}, Ljava/util/stream/LongStream;->parallel()Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic peek(Ljava/util/function/LongConsumer;)Lj$/util/stream/m1;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/LongStream;->peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/stream/LongStream;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final synthetic reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/stream/LongStream;->reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/c;->p(Ljava/util/OptionalLong;)Lj$/util/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sequential()Lj$/util/stream/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/e;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/g;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sequential()Lj$/util/stream/m1;
    .locals 0

    .line 12
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    invoke-interface {p0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic skip(J)Lj$/util/stream/m1;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/stream/LongStream;->skip(J)Ljava/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sorted()Lj$/util/stream/m1;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->sorted()Ljava/util/stream/LongStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

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
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    invoke-interface {p0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lj$/util/c1;->a(Ljava/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic spliterator()Lj$/util/y0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/w0;->a(Ljava/util/Spliterator$OfLong;)Lj$/util/y0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic sum()J
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->sum()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final summaryStatistics()Lj$/util/y;
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->summaryStatistics()Ljava/util/LongSummaryStatistics;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/Error;

    .line 7
    .line 8
    const-string v0, "Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final synthetic toArray()[J
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic unordered()Lj$/util/stream/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/stream/BaseStream;->unordered()Ljava/util/stream/BaseStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lj$/util/stream/e;->f(Ljava/util/stream/BaseStream;)Lj$/util/stream/g;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final synthetic x()Lj$/util/stream/m1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/LongStream;->map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lj$/util/stream/k1;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final synthetic y()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lj$/util/stream/k1;->a:Ljava/util/stream/LongStream;

    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/stream/LongStream;->allMatch(Ljava/util/function/LongPredicate;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method
