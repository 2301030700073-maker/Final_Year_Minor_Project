.class public final Lj$/util/stream/p1;
.super Lj$/util/stream/s1;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/stream/m5;


# instance fields
.field public final synthetic c:Lj$/util/stream/t1;

.field public final synthetic d:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(Lj$/util/stream/t1;Ljava/util/function/IntPredicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj$/util/stream/p1;->c:Lj$/util/stream/t1;

    .line 2
    .line 3
    iput-object p2, p0, Lj$/util/stream/p1;->d:Ljava/util/function/IntPredicate;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lj$/util/stream/s1;-><init>(Lj$/util/stream/t1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj$/util/stream/s1;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj$/util/stream/p1;->d:Ljava/util/function/IntPredicate;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lj$/util/stream/p1;->c:Lj$/util/stream/t1;

    .line 12
    .line 13
    iget-boolean v1, v0, Lj$/util/stream/t1;->a:Z

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lj$/util/stream/s1;->a:Z

    .line 19
    .line 20
    iget-boolean p1, v0, Lj$/util/stream/t1;->b:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lj$/util/stream/s1;->b:Z

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lj$/util/stream/w3;->h(Lj$/util/stream/m5;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final synthetic d(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/stream/w3;->g(Lj$/util/stream/m5;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
