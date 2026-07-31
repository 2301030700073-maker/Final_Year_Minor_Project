.class public final Lj$/util/stream/d1;
.super Lj$/util/stream/g5;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;Lj$/util/stream/l5;I)V
    .locals 0

    .line 8
    iput p3, p0, Lj$/util/stream/d1;->b:I

    invoke-direct {p0, p2}, Lj$/util/stream/g5;-><init>(Lj$/util/stream/l5;)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/l5;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj$/util/stream/d1;->b:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lj$/util/stream/g5;-><init>(Lj$/util/stream/l5;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/d1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    .line 8
    .line 9
    .line 10
    throw p0

    .line 11
    :pswitch_0
    const/4 p0, 0x0

    .line 12
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :pswitch_1
    const/4 p0, 0x0

    .line 17
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongToDoubleFunction;->applyAsDouble(J)D

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :pswitch_2
    const/4 p0, 0x0

    .line 22
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongToIntFunction;->applyAsInt(J)I

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :pswitch_3
    const/4 p0, 0x0

    .line 27
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :pswitch_4
    iget-object p0, p0, Lj$/util/stream/g5;->a:Lj$/util/stream/l5;

    .line 32
    .line 33
    long-to-double p1, p1

    .line 34
    invoke-interface {p0, p1, p2}, Lj$/util/stream/l5;->accept(D)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lj$/util/stream/d1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lj$/util/stream/g5;->c(J)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lj$/util/stream/g5;->a:Lj$/util/stream/l5;

    .line 11
    .line 12
    const-wide/16 p1, -0x1

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Lj$/util/stream/l5;->c(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object p0, p0, Lj$/util/stream/g5;->a:Lj$/util/stream/l5;

    .line 19
    .line 20
    const-wide/16 p1, -0x1

    .line 21
    .line 22
    invoke-interface {p0, p1, p2}, Lj$/util/stream/l5;->c(J)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Z
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/d1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lj$/util/stream/g5;->e()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lj$/util/stream/g5;->a:Lj$/util/stream/l5;

    .line 12
    .line 13
    invoke-interface {p0}, Lj$/util/stream/l5;->e()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
