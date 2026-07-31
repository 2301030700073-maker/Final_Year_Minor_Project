.class public final Lj$/util/stream/w0;
.super Lj$/util/stream/i5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ILj$/util/stream/o5;)V
    .locals 0

    .line 1
    iput p1, p0, Lj$/util/stream/w0;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lj$/util/stream/i5;-><init>(Lj$/util/stream/o5;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/a;Lj$/util/stream/o5;I)V
    .locals 0

    .line 7
    iput p3, p0, Lj$/util/stream/w0;->b:I

    invoke-direct {p0, p2}, Lj$/util/stream/i5;-><init>(Lj$/util/stream/o5;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    .line 1
    iget v0, p0, Lj$/util/stream/w0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-interface {p0, p1}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    .line 8
    .line 9
    .line 10
    throw p0

    .line 11
    :pswitch_0
    const/4 p0, 0x0

    .line 12
    invoke-interface {p0, p1}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lj$/util/stream/i5;->a:Lj$/util/stream/o5;

    .line 17
    .line 18
    int-to-double v0, p1

    .line 19
    invoke-interface {p0, v0, v1}, Lj$/util/stream/o5;->accept(D)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_2
    iget-object p0, p0, Lj$/util/stream/i5;->a:Lj$/util/stream/o5;

    .line 24
    .line 25
    int-to-long v0, p1

    .line 26
    invoke-interface {p0, v0, v1}, Lj$/util/stream/o5;->accept(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
