.class public final Lj$/util/stream/u1;
.super Lj$/util/stream/b;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final j:Lj$/nio/file/b0;


# direct methods
.method public constructor <init>(Lj$/nio/file/b0;Lj$/util/stream/a;Lj$/util/Spliterator;)V
    .locals 0

    .line 9
    invoke-direct {p0, p2, p3}, Lj$/util/stream/b;-><init>(Lj$/util/stream/a;Lj$/util/Spliterator;)V

    .line 10
    iput-object p1, p0, Lj$/util/stream/u1;->j:Lj$/nio/file/b0;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/u1;Lj$/util/Spliterator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lj$/util/stream/u1;->j:Lj$/nio/file/b0;

    .line 5
    .line 6
    iput-object p1, p0, Lj$/util/stream/u1;->j:Lj$/nio/file/b0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lj$/util/stream/d;->a:Lj$/util/stream/a;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/util/stream/u1;->j:Lj$/nio/file/b0;

    .line 4
    .line 5
    iget-object v1, v1, Lj$/nio/file/b0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/function/Supplier;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lj$/util/stream/s1;

    .line 14
    .line 15
    iget-object v2, p0, Lj$/util/stream/d;->b:Lj$/util/Spliterator;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lj$/util/stream/a;->N(Lj$/util/Spliterator;Lj$/util/stream/o5;)Lj$/util/stream/o5;

    .line 18
    .line 19
    .line 20
    iget-boolean v0, v1, Lj$/util/stream/s1;->b:Z

    .line 21
    .line 22
    iget-object v1, p0, Lj$/util/stream/u1;->j:Lj$/nio/file/b0;

    .line 23
    .line 24
    iget-object v1, v1, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lj$/util/stream/t1;

    .line 27
    .line 28
    iget-boolean v1, v1, Lj$/util/stream/t1;->b:Z

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object p0, p0, Lj$/util/stream/b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    :cond_2
    :goto_0
    return-object v2
.end method

.method public final c(Lj$/util/Spliterator;)Lj$/util/stream/d;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/u1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lj$/util/stream/u1;-><init>(Lj$/util/stream/u1;Lj$/util/Spliterator;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/u1;->j:Lj$/nio/file/b0;

    .line 2
    .line 3
    iget-object p0, p0, Lj$/nio/file/b0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lj$/util/stream/t1;

    .line 6
    .line 7
    iget-boolean p0, p0, Lj$/util/stream/t1;->b:Z

    .line 8
    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
