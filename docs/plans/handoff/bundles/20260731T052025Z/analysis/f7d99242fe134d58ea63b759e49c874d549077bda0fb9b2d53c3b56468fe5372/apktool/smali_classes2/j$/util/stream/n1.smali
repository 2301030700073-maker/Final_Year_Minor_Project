.class public final synthetic Lj$/util/stream/n1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj$/util/stream/t1;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/t1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj$/util/stream/n1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj$/util/stream/n1;->b:Lj$/util/stream/t1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/n1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj$/util/stream/r1;

    .line 7
    .line 8
    iget-object p0, p0, Lj$/util/stream/n1;->b:Lj$/util/stream/t1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lj$/util/stream/s1;-><init>(Lj$/util/stream/t1;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    new-instance v0, Lj$/util/stream/p1;

    .line 15
    .line 16
    iget-object p0, p0, Lj$/util/stream/n1;->b:Lj$/util/stream/t1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lj$/util/stream/s1;-><init>(Lj$/util/stream/t1;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_1
    new-instance v0, Lj$/util/stream/q1;

    .line 23
    .line 24
    iget-object p0, p0, Lj$/util/stream/n1;->b:Lj$/util/stream/t1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lj$/util/stream/s1;-><init>(Lj$/util/stream/t1;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
