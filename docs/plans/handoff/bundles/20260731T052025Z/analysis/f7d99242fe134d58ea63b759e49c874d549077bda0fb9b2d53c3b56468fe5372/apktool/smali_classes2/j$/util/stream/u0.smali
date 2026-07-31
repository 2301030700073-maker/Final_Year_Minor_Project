.class public final Lj$/util/stream/u0;
.super Lj$/util/stream/a1;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;ILjava/lang/Object;I)V
    .locals 0

    .line 10
    iput p4, p0, Lj$/util/stream/u0;->l:I

    iput-object p3, p0, Lj$/util/stream/u0;->m:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/b1;Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj$/util/stream/u0;->l:I

    .line 3
    .line 4
    iput-object p2, p0, Lj$/util/stream/u0;->m:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final M(ILj$/util/stream/l5;)Lj$/util/stream/l5;
    .locals 1

    .line 1
    iget p1, p0, Lj$/util/stream/u0;->l:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lj$/util/stream/y4;

    .line 7
    .line 8
    invoke-direct {p1, p0, p2}, Lj$/util/stream/y4;-><init>(Lj$/util/stream/u0;Lj$/util/stream/l5;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_0
    new-instance p1, Lj$/util/stream/l;

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/l;-><init>(Lj$/util/stream/a;Lj$/util/stream/l5;I)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_1
    new-instance p1, Lj$/util/stream/x0;

    .line 20
    .line 21
    invoke-direct {p1, p0, p2}, Lj$/util/stream/x0;-><init>(Lj$/util/stream/u0;Lj$/util/stream/l5;)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_2
    new-instance p1, Lj$/util/stream/t0;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/t0;-><init>(Lj$/util/stream/a;Lj$/util/stream/l5;I)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :pswitch_3
    new-instance p1, Lj$/util/stream/t0;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/t0;-><init>(Lj$/util/stream/a;Lj$/util/stream/l5;I)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
