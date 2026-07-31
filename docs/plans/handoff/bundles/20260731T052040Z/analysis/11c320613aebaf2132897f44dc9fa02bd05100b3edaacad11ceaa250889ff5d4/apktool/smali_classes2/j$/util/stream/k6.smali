.class public final Lj$/util/stream/k6;
.super Lj$/util/stream/e5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final l:Z

.field public final m:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lj$/util/stream/g5;)V
    .locals 2

    .line 21
    sget v0, Lj$/util/stream/d7;->q:I

    sget v1, Lj$/util/stream/d7;->o:I

    or-int/2addr v0, v1

    .line 22
    invoke-direct {p0, p1, v0}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lj$/util/stream/k6;->l:Z

    .line 24
    invoke-static {}, Lj$/util/Comparator$-CC;->naturalOrder()Ljava/util/Comparator;

    move-result-object p1

    .line 25
    iput-object p1, p0, Lj$/util/stream/k6;->m:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/g5;Ljava/util/Comparator;)V
    .locals 2

    .line 1
    sget v0, Lj$/util/stream/d7;->q:I

    .line 2
    .line 3
    sget v1, Lj$/util/stream/d7;->p:I

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    invoke-direct {p0, p1, v0}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lj$/util/stream/k6;->l:Z

    .line 11
    .line 12
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/Comparator;

    .line 17
    .line 18
    iput-object p1, p0, Lj$/util/stream/k6;->m:Ljava/util/Comparator;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final G(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 2

    .line 1
    sget-object v0, Lj$/util/stream/d7;->SORTED:Lj$/util/stream/d7;

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
    iget-boolean v0, p0, Lj$/util/stream/k6;->l:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    invoke-virtual {p1, p2, p0, p3}, Lj$/util/stream/a;->m(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/a;->m(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1, p3}, Lj$/util/stream/g2;->q(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p0, p0, Lj$/util/stream/k6;->m:Ljava/util/Comparator;

    .line 31
    .line 32
    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 33
    .line 34
    .line 35
    new-instance p0, Lj$/util/stream/j2;

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lj$/util/stream/j2;-><init>([Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method public final J(ILj$/util/stream/o5;)Lj$/util/stream/o5;
    .locals 1

    .line 1
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lj$/util/stream/d7;->SORTED:Lj$/util/stream/d7;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lj$/util/stream/d7;->u(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lj$/util/stream/k6;->l:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object p2

    .line 17
    :cond_0
    sget-object v0, Lj$/util/stream/d7;->SIZED:Lj$/util/stream/d7;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lj$/util/stream/d7;->u(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object p0, p0, Lj$/util/stream/k6;->m:Ljava/util/Comparator;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Lj$/util/stream/p6;

    .line 28
    .line 29
    invoke-direct {p1, p2, p0}, Lj$/util/stream/d6;-><init>(Lj$/util/stream/o5;Ljava/util/Comparator;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    new-instance p1, Lj$/util/stream/l6;

    .line 34
    .line 35
    invoke-direct {p1, p2, p0}, Lj$/util/stream/d6;-><init>(Lj$/util/stream/o5;Ljava/util/Comparator;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method
