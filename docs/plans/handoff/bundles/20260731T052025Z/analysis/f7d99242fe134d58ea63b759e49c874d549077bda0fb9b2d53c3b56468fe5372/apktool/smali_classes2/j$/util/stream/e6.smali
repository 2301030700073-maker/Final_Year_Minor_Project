.class public final Lj$/util/stream/e6;
.super Lj$/util/stream/z0;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/util/stream/r8;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;II)V
    .locals 0

    .line 1
    iput p3, p0, Lj$/util/stream/e6;->l:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final J(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/e6;->l:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj$/util/stream/t8;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/t8;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

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
    new-instance v0, Lj$/util/stream/u8;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/u8;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

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
    :pswitch_1
    sget-object p0, Lj$/util/stream/z6;->SORTED:Lj$/util/stream/z6;

    .line 31
    .line 32
    iget v0, p1, Lj$/util/stream/a;->f:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lj$/util/stream/z6;->u(I)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    invoke-virtual {p1, p2, p0, p3}, Lj$/util/stream/a;->o(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p0, 0x1

    .line 47
    invoke-virtual {p1, p2, p0, p3}, Lj$/util/stream/a;->o(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lj$/util/stream/c2;

    .line 52
    .line 53
    invoke-interface {p0}, Lj$/util/stream/f2;->b()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, [I

    .line 58
    .line 59
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lj$/util/stream/b3;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lj$/util/stream/b3;-><init>([I)V

    .line 65
    .line 66
    .line 67
    move-object p0, p1

    .line 68
    :goto_0
    return-object p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public K(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 1
    iget v0, p0, Lj$/util/stream/e6;->l:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lj$/util/stream/a;->K(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    sget-object v0, Lj$/util/stream/z6;->ORDERED:Lj$/util/stream/z6;

    .line 12
    .line 13
    iget v1, p1, Lj$/util/stream/a;->f:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lj$/util/stream/z6;->u(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lj$/util/stream/w0;

    .line 22
    .line 23
    const/16 v1, 0x1d

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lj$/util/stream/w0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/e6;->J(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Lj$/util/stream/g2;->spliterator()Lj$/util/Spliterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Lj$/util/stream/w8;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->S(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lj$/util/v0;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lj$/util/stream/w8;-><init>(Lj$/util/Spliterator;I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-object p0

    .line 50
    :pswitch_1
    sget-object v0, Lj$/util/stream/z6;->ORDERED:Lj$/util/stream/z6;

    .line 51
    .line 52
    iget v1, p1, Lj$/util/stream/a;->f:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lj$/util/stream/z6;->u(I)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    new-instance v0, Lj$/util/stream/w0;

    .line 61
    .line 62
    const/16 v1, 0x1c

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lj$/util/stream/w0;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/e6;->J(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Lj$/util/stream/g2;->spliterator()Lj$/util/Spliterator;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance p0, Lj$/util/stream/w8;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->S(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lj$/util/v0;

    .line 83
    .line 84
    const/4 p2, 0x1

    .line 85
    invoke-direct {p0, p1, p2}, Lj$/util/stream/w8;-><init>(Lj$/util/Spliterator;I)V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-object p0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final M(ILj$/util/stream/l5;)Lj$/util/stream/l5;
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/e6;->l:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lj$/util/stream/l8;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/l8;-><init>(Lj$/util/stream/e6;Lj$/util/stream/l5;Z)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_0
    new-instance p1, Lj$/util/stream/k8;

    .line 14
    .line 15
    invoke-direct {p1, p0, p2}, Lj$/util/stream/k8;-><init>(Lj$/util/stream/e6;Lj$/util/stream/l5;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_1
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lj$/util/stream/z6;->SORTED:Lj$/util/stream/z6;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lj$/util/stream/z6;->u(I)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    sget-object p0, Lj$/util/stream/z6;->SIZED:Lj$/util/stream/z6;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lj$/util/stream/z6;->u(I)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    new-instance p0, Lj$/util/stream/j6;

    .line 40
    .line 41
    invoke-direct {p0, p2}, Lj$/util/stream/f5;-><init>(Lj$/util/stream/l5;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    move-object p2, p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Lj$/util/stream/b6;

    .line 47
    .line 48
    invoke-direct {p0, p2}, Lj$/util/stream/f5;-><init>(Lj$/util/stream/l5;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :goto_1
    return-object p2

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lj$/util/stream/y1;Z)Lj$/util/stream/s8;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/l8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/l8;-><init>(Lj$/util/stream/e6;Lj$/util/stream/l5;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
