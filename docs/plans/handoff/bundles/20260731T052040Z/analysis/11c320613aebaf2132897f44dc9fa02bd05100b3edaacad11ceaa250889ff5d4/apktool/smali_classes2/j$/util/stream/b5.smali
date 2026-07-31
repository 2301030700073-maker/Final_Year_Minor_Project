.class public final Lj$/util/stream/b5;
.super Lj$/util/stream/f5;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/g5;ILjava/util/function/Function;I)V
    .locals 0

    .line 1
    iput p4, p0, Lj$/util/stream/b5;->l:I

    .line 2
    .line 3
    iput-object p3, p0, Lj$/util/stream/b5;->m:Ljava/util/function/Function;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final J(ILj$/util/stream/o5;)Lj$/util/stream/o5;
    .locals 1

    .line 1
    iget p1, p0, Lj$/util/stream/b5;->l:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lj$/util/stream/l;

    .line 7
    .line 8
    invoke-direct {p1, p0, p2}, Lj$/util/stream/l;-><init>(Lj$/util/stream/b5;Lj$/util/stream/o5;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_0
    new-instance p1, Lj$/util/stream/m;

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/m;-><init>(Lj$/util/stream/a;Lj$/util/stream/o5;I)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
