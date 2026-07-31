.class public final Lj$/util/stream/o8;
.super Lj$/util/stream/e5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/stream/y8;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/g5;ILjava/util/function/Predicate;I)V
    .locals 0

    .line 1
    iput p4, p0, Lj$/util/stream/o8;->l:I

    .line 2
    .line 3
    iput-object p3, p0, Lj$/util/stream/o8;->m:Ljava/util/function/Predicate;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final G(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/o8;->l:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj$/util/stream/a9;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/a9;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lj$/util/stream/g2;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance v0, Lj$/util/stream/b9;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/b9;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lj$/util/stream/g2;

    .line 28
    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final H(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 3

    .line 1
    iget v0, p0, Lj$/util/stream/o8;->l:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    sget-object v0, Lj$/util/stream/d7;->ORDERED:Lj$/util/stream/d7;

    .line 8
    .line 9
    iget v2, p1, Lj$/util/stream/a;->f:I

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lj$/util/stream/d7;->u(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lj$/util/stream/d1;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lj$/util/stream/d1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/o8;->G(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Lj$/util/stream/g2;->spliterator()Lj$/util/Spliterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lj$/util/stream/h9;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->P(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Lj$/util/stream/o8;->m:Ljava/util/function/Predicate;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/h9;-><init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;I)V

    .line 41
    .line 42
    .line 43
    move-object p0, v0

    .line 44
    :goto_0
    return-object p0

    .line 45
    :pswitch_0
    sget-object v0, Lj$/util/stream/d7;->ORDERED:Lj$/util/stream/d7;

    .line 46
    .line 47
    iget v2, p1, Lj$/util/stream/a;->f:I

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lj$/util/stream/d7;->u(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Lj$/util/stream/d1;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lj$/util/stream/d1;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/o8;->G(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Lj$/util/stream/g2;->spliterator()Lj$/util/Spliterator;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    new-instance v0, Lj$/util/stream/h9;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->P(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p0, p0, Lj$/util/stream/o8;->m:Ljava/util/function/Predicate;

    .line 76
    .line 77
    const/4 p2, 0x1

    .line 78
    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/h9;-><init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;I)V

    .line 79
    .line 80
    .line 81
    move-object p0, v0

    .line 82
    :goto_1
    return-object p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final J(ILj$/util/stream/o5;)Lj$/util/stream/o5;
    .locals 1

    .line 1
    iget p1, p0, Lj$/util/stream/o8;->l:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lj$/util/stream/p8;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/p8;-><init>(Lj$/util/stream/o8;Lj$/util/stream/o5;Z)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_0
    new-instance p1, Lj$/util/stream/l;

    .line 14
    .line 15
    invoke-direct {p1, p0, p2}, Lj$/util/stream/l;-><init>(Lj$/util/stream/o8;Lj$/util/stream/o5;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lj$/util/stream/y1;Z)Lj$/util/stream/z8;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/p8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/p8;-><init>(Lj$/util/stream/o8;Lj$/util/stream/o5;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
