.class public final Lj$/util/stream/q;
.super Lj$/util/stream/f5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;ILjava/lang/Object;I)V
    .locals 0

    .line 11
    iput p4, p0, Lj$/util/stream/q;->l:I

    iput-object p3, p0, Lj$/util/stream/q;->m:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/g5;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lj$/util/stream/q;->l:I

    .line 3
    .line 4
    iput-object p2, p0, Lj$/util/stream/q;->m:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final J(ILj$/util/stream/o5;)Lj$/util/stream/o5;
    .locals 1

    .line 1
    iget p1, p0, Lj$/util/stream/q;->l:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lj$/util/stream/m;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/m;-><init>(Lj$/util/stream/a;Lj$/util/stream/o5;I)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_0
    new-instance p1, Lj$/util/stream/m;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/m;-><init>(Lj$/util/stream/a;Lj$/util/stream/o5;I)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_1
    new-instance p1, Lj$/util/stream/c1;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/c1;-><init>(Lj$/util/stream/a;Lj$/util/stream/o5;I)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_2
    new-instance p1, Lj$/util/stream/u0;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/u0;-><init>(Lj$/util/stream/a;Lj$/util/stream/o5;I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :pswitch_3
    new-instance p1, Lj$/util/stream/o;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/o;-><init>(Lj$/util/stream/a;Lj$/util/stream/o5;I)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
