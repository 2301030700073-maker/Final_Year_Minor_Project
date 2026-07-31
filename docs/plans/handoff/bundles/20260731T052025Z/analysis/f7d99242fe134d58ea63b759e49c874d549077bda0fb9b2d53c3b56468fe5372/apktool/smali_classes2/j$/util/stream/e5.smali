.class public abstract Lj$/util/stream/e5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/util/stream/i5;


# instance fields
.field public final a:Lj$/util/stream/l5;


# direct methods
.method public constructor <init>(Lj$/util/stream/l5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lj$/util/stream/l5;

    .line 9
    .line 10
    iput-object p1, p0, Lj$/util/stream/e5;->a:Lj$/util/stream/l5;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final synthetic accept(I)V
    .locals 0

    .line 1
    invoke-static {}, Lj$/util/stream/v3;->k()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public final synthetic accept(J)V
    .locals 0

    .line 6
    invoke-static {}, Lj$/util/stream/v3;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 7
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
    invoke-static {p0, p1}, Lj$/util/c;->a(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p0

    return-object p0
.end method

.method public c(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/e5;->a:Lj$/util/stream/l5;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lj$/util/stream/l5;->c(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/e5;->a:Lj$/util/stream/l5;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/l5;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public end()V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/e5;->a:Lj$/util/stream/l5;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/stream/l5;->end()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic r(Ljava/lang/Double;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/stream/v3;->d(Lj$/util/stream/i5;Ljava/lang/Double;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
