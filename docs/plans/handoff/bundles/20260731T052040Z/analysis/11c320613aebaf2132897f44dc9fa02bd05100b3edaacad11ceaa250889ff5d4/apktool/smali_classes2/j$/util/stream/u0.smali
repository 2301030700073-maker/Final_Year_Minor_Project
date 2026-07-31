.class public final Lj$/util/stream/u0;
.super Lj$/util/stream/i5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lj$/util/stream/a;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;Lj$/util/stream/o5;I)V
    .locals 0

    .line 1
    iput p3, p0, Lj$/util/stream/u0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lj$/util/stream/u0;->c:Lj$/util/stream/a;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lj$/util/stream/i5;-><init>(Lj$/util/stream/o5;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    .line 1
    iget v0, p0, Lj$/util/stream/u0;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lj$/util/stream/i5;->a:Lj$/util/stream/o5;

    .line 4
    .line 5
    iget-object p0, p0, Lj$/util/stream/u0;->c:Lj$/util/stream/a;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lj$/util/stream/v0;

    .line 11
    .line 12
    iget-object p0, p0, Lj$/util/stream/v0;->m:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/util/function/IntPredicate;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-interface {v1, p1}, Lj$/util/stream/o5;->accept(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :pswitch_0
    check-cast p0, Lj$/util/stream/v0;

    .line 27
    .line 28
    iget-object p0, p0, Lj$/util/stream/v0;->m:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Ljava/util/function/IntUnaryOperator;

    .line 31
    .line 32
    invoke-interface {p0, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-interface {v1, p0}, Lj$/util/stream/o5;->accept(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    check-cast p0, Lj$/util/stream/v0;

    .line 41
    .line 42
    iget-object p0, p0, Lj$/util/stream/v0;->m:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Ljava/util/function/IntConsumer;

    .line 45
    .line 46
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, p1}, Lj$/util/stream/o5;->accept(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_2
    check-cast p0, Lj$/util/stream/q;

    .line 54
    .line 55
    iget-object p0, p0, Lj$/util/stream/q;->m:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Ljava/util/function/IntFunction;

    .line 58
    .line 59
    invoke-interface {p0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(J)V
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/u0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lj$/util/stream/i5;->c(J)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lj$/util/stream/i5;->a:Lj$/util/stream/o5;

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
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
