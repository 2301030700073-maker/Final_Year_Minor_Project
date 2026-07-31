.class public final Lj$/util/stream/m;
.super Lj$/util/stream/k5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;Lj$/util/stream/o5;I)V
    .locals 0

    .line 1
    iput p3, p0, Lj$/util/stream/m;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lj$/util/stream/k5;-><init>(Lj$/util/stream/o5;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/o5;)V
    .locals 1

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/m;->b:I

    invoke-direct {p0, p1}, Lj$/util/stream/k5;-><init>(Lj$/util/stream/o5;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lj$/util/stream/m;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lj$/util/stream/s;

    .line 11
    .line 12
    iget-object p0, p0, Lj$/util/stream/s;->m:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/util/function/ToDoubleFunction;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    invoke-interface {v1, p0, p1}, Lj$/util/stream/o5;->accept(D)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object p0, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lj$/util/stream/g1;

    .line 27
    .line 28
    iget-object p0, p0, Lj$/util/stream/g1;->m:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Ljava/util/function/ToLongFunction;

    .line 31
    .line 32
    invoke-interface {p0, p1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    invoke-interface {v1, p0, p1}, Lj$/util/stream/o5;->accept(J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    iget-object p0, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lj$/util/stream/v0;

    .line 43
    .line 44
    iget-object p0, p0, Lj$/util/stream/v0;->m:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Ljava/util/function/ToIntFunction;

    .line 47
    .line 48
    invoke-interface {p0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-interface {v1, p0}, Lj$/util/stream/o5;->accept(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_2
    iget-object p0, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lj$/util/stream/b5;

    .line 59
    .line 60
    iget-object p0, p0, Lj$/util/stream/b5;->m:Ljava/util/function/Function;

    .line 61
    .line 62
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_3
    iget-object p0, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Lj$/util/stream/q;

    .line 73
    .line 74
    iget-object p0, p0, Lj$/util/stream/q;->m:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Ljava/util/function/Predicate;

    .line 77
    .line 78
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_0

    .line 83
    .line 84
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void

    .line 88
    :pswitch_4
    iget-object p0, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Lj$/util/stream/q;

    .line 91
    .line 92
    iget-object p0, p0, Lj$/util/stream/q;->m:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Ljava/util/function/Consumer;

    .line 95
    .line 96
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_5
    iget-object v0, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Ljava/util/Set;

    .line 106
    .line 107
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    .line 113
    iget-object p0, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Ljava/util/Set;

    .line 116
    .line 117
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(J)V
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/m;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1, p2}, Lj$/util/stream/k5;->c(J)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 11
    .line 12
    const-wide/16 p1, -0x1

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Lj$/util/stream/o5;->c(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_2
    new-instance p1, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 26
    .line 27
    const-wide/16 p1, -0x1

    .line 28
    .line 29
    invoke-interface {p0, p1, p2}, Lj$/util/stream/o5;->c(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public end()V
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/m;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lj$/util/stream/k5;->end()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lj$/util/stream/m;->c:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p0, p0, Lj$/util/stream/k5;->a:Lj$/util/stream/o5;

    .line 14
    .line 15
    invoke-interface {p0}, Lj$/util/stream/o5;->end()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
