.class public final synthetic Lj$/util/stream/IntStream$-CC;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static varargs of([I)Lj$/util/stream/IntStream;
    .locals 0

    .line 1
    invoke-static {p0}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static range(II)Lj$/util/stream/IntStream;
    .locals 1

    .line 1
    if-lt p0, p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lj$/util/Spliterators;->b:Lj$/util/k1;

    .line 4
    .line 5
    invoke-static {p0}, Lj$/util/stream/StreamSupport;->a(Lj$/util/Spliterator$OfInt;)Lj$/util/stream/y0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lj$/util/stream/j8;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lj$/util/stream/j8;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lj$/util/stream/StreamSupport;->a(Lj$/util/Spliterator$OfInt;)Lj$/util/stream/y0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
