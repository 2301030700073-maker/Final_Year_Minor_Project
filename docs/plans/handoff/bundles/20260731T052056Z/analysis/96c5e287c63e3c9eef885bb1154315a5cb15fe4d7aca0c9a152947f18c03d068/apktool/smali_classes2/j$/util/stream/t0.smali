.class public final Lj$/util/stream/t0;
.super Lj$/util/stream/f5;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lj$/util/stream/a;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;Lj$/util/stream/l5;I)V
    .locals 0

    .line 1
    iput p3, p0, Lj$/util/stream/t0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lj$/util/stream/t0;->c:Lj$/util/stream/a;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lj$/util/stream/f5;-><init>(Lj$/util/stream/l5;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    .line 1
    iget v0, p0, Lj$/util/stream/t0;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lj$/util/stream/f5;->a:Lj$/util/stream/l5;

    .line 4
    .line 5
    iget-object p0, p0, Lj$/util/stream/t0;->c:Lj$/util/stream/a;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lj$/util/stream/u0;

    .line 11
    .line 12
    iget-object p0, p0, Lj$/util/stream/u0;->m:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/util/function/IntConsumer;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p1}, Lj$/util/stream/l5;->accept(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p0, Lj$/util/stream/q;

    .line 24
    .line 25
    iget-object p0, p0, Lj$/util/stream/q;->m:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Ljava/util/function/IntFunction;

    .line 28
    .line 29
    invoke-interface {p0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
