.class public final Lj$/util/stream/t8;
.super Lj$/util/stream/z0;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/stream/y8;


# instance fields
.field public final synthetic l:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(Lj$/util/stream/b1;ILjava/util/function/IntPredicate;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lj$/util/stream/t8;->l:Ljava/util/function/IntPredicate;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final G(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/a9;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/a9;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lj$/util/stream/g2;

    .line 11
    .line 12
    return-object p0
.end method

.method public final H(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 1
    sget-object v0, Lj$/util/stream/d7;->ORDERED:Lj$/util/stream/d7;

    .line 2
    .line 3
    iget v1, p1, Lj$/util/stream/a;->f:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lj$/util/stream/d7;->u(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lj$/util/stream/d1;

    .line 12
    .line 13
    const/16 v1, 0x13

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lj$/util/stream/d1;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/t8;->G(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Lj$/util/stream/g2;->spliterator()Lj$/util/Spliterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance v0, Lj$/util/stream/d9;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->P(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 34
    .line 35
    iget-object p0, p0, Lj$/util/stream/t8;->l:Ljava/util/function/IntPredicate;

    .line 36
    .line 37
    invoke-direct {v0, p1, p0}, Lj$/util/stream/f9;-><init>(Lj$/util/Spliterator$OfInt;Ljava/util/function/IntPredicate;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public final J(ILj$/util/stream/o5;)Lj$/util/stream/o5;
    .locals 1

    .line 1
    new-instance p1, Lj$/util/stream/s8;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/s8;-><init>(Lj$/util/stream/t8;Lj$/util/stream/o5;Z)V

    .line 5
    .line 6
    .line 7
    return-object p1
.end method

.method public final f(Lj$/util/stream/y1;Z)Lj$/util/stream/z8;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/s8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/s8;-><init>(Lj$/util/stream/t8;Lj$/util/stream/o5;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
