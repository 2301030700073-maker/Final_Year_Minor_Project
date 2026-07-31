.class public final synthetic Lj$/util/stream/n7;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/util/stream/l5;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/DoubleConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/DoubleConsumer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj$/util/stream/n7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj$/util/stream/n7;->b:Ljava/util/function/DoubleConsumer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final synthetic a(J)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic b(J)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic f()V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic g()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/n7;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lj$/util/stream/n7;->b:Ljava/util/function/DoubleConsumer;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lj$/util/stream/s6;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/s6;->accept(D)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-interface {p0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic accept(I)V
    .locals 0

    iget p0, p0, Lj$/util/stream/n7;->a:I

    packed-switch p0, :pswitch_data_0

    .line 19
    invoke-static {}, Lj$/util/stream/w3;->k()V

    const/4 p0, 0x0

    throw p0

    .line 20
    :pswitch_0
    invoke-static {}, Lj$/util/stream/w3;->k()V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic accept(J)V
    .locals 0

    iget p0, p0, Lj$/util/stream/n7;->a:I

    packed-switch p0, :pswitch_data_0

    .line 21
    invoke-static {}, Lj$/util/stream/w3;->l()V

    const/4 p0, 0x0

    throw p0

    .line 22
    :pswitch_0
    invoke-static {}, Lj$/util/stream/w3;->l()V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lj$/util/stream/n7;->a:I

    packed-switch v0, :pswitch_data_0

    .line 23
    invoke-static {p0, p1}, Lj$/util/stream/w3;->e(Lj$/util/stream/l5;Ljava/lang/Object;)V

    return-void

    .line 24
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/stream/w3;->e(Lj$/util/stream/l5;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/n7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 1

    iget v0, p0, Lj$/util/stream/n7;->a:I

    packed-switch v0, :pswitch_data_0

    .line 17
    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p0

    return-object p0

    .line 18
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c(J)V
    .locals 0

    .line 1
    iget p0, p0, Lj$/util/stream/n7;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final synthetic e()Z
    .locals 0

    .line 1
    iget p0, p0, Lj$/util/stream/n7;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic end()V
    .locals 0

    .line 1
    iget p0, p0, Lj$/util/stream/n7;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final synthetic s(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/n7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lj$/util/stream/w3;->d(Lj$/util/stream/l5;Ljava/lang/Double;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/stream/w3;->d(Lj$/util/stream/l5;Ljava/lang/Double;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
