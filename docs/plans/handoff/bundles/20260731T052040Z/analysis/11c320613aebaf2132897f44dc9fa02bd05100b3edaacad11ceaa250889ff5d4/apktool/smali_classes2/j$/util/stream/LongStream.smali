.class public interface abstract Lj$/util/stream/LongStream;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/BaseStream<",
        "Ljava/lang/Long;",
        "Lj$/util/stream/LongStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract a()Lj$/util/stream/LongStream;
.end method

.method public abstract asDoubleStream()Lj$/util/stream/e0;
.end method

.method public abstract average()Lj$/util/b0;
.end method

.method public abstract b()Lj$/util/stream/LongStream;
.end method

.method public abstract boxed()Lj$/util/stream/Stream;
.end method

.method public abstract c()Lj$/util/stream/LongStream;
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
.end method

.method public abstract count()J
.end method

.method public abstract d(Lj$/desugar/sun/nio/fs/g;)Lj$/util/stream/LongStream;
.end method

.method public abstract distinct()Lj$/util/stream/LongStream;
.end method

.method public abstract findAny()Lj$/util/c0;
.end method

.method public abstract findFirst()Lj$/util/c0;
.end method

.method public abstract forEach(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract g()Lj$/util/stream/e0;
.end method

.method public abstract iterator()Lj$/util/o0;
.end method

.method public abstract limit(J)Lj$/util/stream/LongStream;
.end method

.method public abstract mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;
.end method

.method public abstract max()Lj$/util/c0;
.end method

.method public abstract min()Lj$/util/c0;
.end method

.method public abstract n()Z
.end method

.method public abstract parallel()Lj$/util/stream/LongStream;
.end method

.method public abstract peek(Ljava/util/function/LongConsumer;)Lj$/util/stream/LongStream;
.end method

.method public abstract q()Z
.end method

.method public abstract reduce(JLjava/util/function/LongBinaryOperator;)J
.end method

.method public abstract reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/c0;
.end method

.method public abstract sequential()Lj$/util/stream/LongStream;
.end method

.method public abstract skip(J)Lj$/util/stream/LongStream;
.end method

.method public abstract sorted()Lj$/util/stream/LongStream;
.end method

.method public abstract spliterator()Lj$/util/y0;
.end method

.method public abstract sum()J
.end method

.method public abstract summaryStatistics()Lj$/util/z;
.end method

.method public abstract toArray()[J
.end method

.method public abstract w()Lj$/util/stream/LongStream;
.end method

.method public abstract x()Z
.end method

.method public abstract z()Lj$/util/stream/IntStream;
.end method
