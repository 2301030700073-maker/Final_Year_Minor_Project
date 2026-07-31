.class public final Lj$/util/stream/v0;
.super Lj$/util/stream/f5;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ILj$/util/stream/l5;)V
    .locals 0

    .line 1
    iput p1, p0, Lj$/util/stream/v0;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lj$/util/stream/f5;-><init>(Lj$/util/stream/l5;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/a;Lj$/util/stream/l5;I)V
    .locals 0

    .line 7
    iput p3, p0, Lj$/util/stream/v0;->b:I

    invoke-direct {p0, p2}, Lj$/util/stream/f5;-><init>(Lj$/util/stream/l5;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    .line 1
    iget v0, p0, Lj$/util/stream/v0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-interface {p0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    .line 8
    .line 9
    .line 10
    throw p0

    .line 11
    :pswitch_0
    const/4 p0, 0x0

    .line 12
    invoke-interface {p0, p1}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :pswitch_1
    const/4 p0, 0x0

    .line 17
    invoke-interface {p0, p1}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :pswitch_2
    iget-object p0, p0, Lj$/util/stream/f5;->a:Lj$/util/stream/l5;

    .line 22
    .line 23
    int-to-double v0, p1

    .line 24
    invoke-interface {p0, v0, v1}, Lj$/util/stream/l5;->accept(D)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_3
    iget-object p0, p0, Lj$/util/stream/f5;->a:Lj$/util/stream/l5;

    .line 29
    .line 30
    int-to-long v0, p1

    .line 31
    invoke-interface {p0, v0, v1}, Lj$/util/stream/l5;->accept(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(J)V
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/v0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lj$/util/stream/f5;->c(J)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lj$/util/stream/f5;->a:Lj$/util/stream/l5;

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
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
