.class public final Lj$/util/stream/z3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/util/stream/q4;
.implements Lj$/util/stream/i5;


# instance fields
.field public a:D

.field public final synthetic b:D

.field public final synthetic c:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method public constructor <init>(DLjava/util/function/DoubleBinaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lj$/util/stream/z3;->b:D

    .line 5
    .line 6
    iput-object p3, p0, Lj$/util/stream/z3;->c:Ljava/util/function/DoubleBinaryOperator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj$/util/stream/z3;->c:Ljava/util/function/DoubleBinaryOperator;

    .line 2
    .line 3
    iget-wide v1, p0, Lj$/util/stream/z3;->a:D

    .line 4
    .line 5
    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iput-wide p1, p0, Lj$/util/stream/z3;->a:D

    .line 10
    .line 11
    return-void
.end method

.method public final synthetic accept(I)V
    .locals 0

    .line 14
    invoke-static {}, Lj$/util/stream/v3;->k()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final synthetic accept(J)V
    .locals 0

    .line 12
    invoke-static {}, Lj$/util/stream/v3;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lj$/util/stream/v3;->e(Lj$/util/stream/i5;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lj$/time/a;->b(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p0

    return-object p0
.end method

.method public final c(J)V
    .locals 0

    .line 1
    iget-wide p1, p0, Lj$/util/stream/z3;->b:D

    .line 2
    .line 3
    iput-wide p1, p0, Lj$/util/stream/z3;->a:D

    .line 4
    .line 5
    return-void
.end method

.method public final e()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final end()V
    .locals 0

    .line 1
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, Lj$/util/stream/z3;->a:D

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final i(Lj$/util/stream/q4;)V
    .locals 2

    .line 1
    check-cast p1, Lj$/util/stream/z3;

    .line 2
    .line 3
    iget-wide v0, p1, Lj$/util/stream/z3;->a:D

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lj$/util/stream/z3;->accept(D)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final synthetic n(Ljava/lang/Double;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/stream/v3;->d(Lj$/util/stream/i5;Ljava/lang/Double;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
