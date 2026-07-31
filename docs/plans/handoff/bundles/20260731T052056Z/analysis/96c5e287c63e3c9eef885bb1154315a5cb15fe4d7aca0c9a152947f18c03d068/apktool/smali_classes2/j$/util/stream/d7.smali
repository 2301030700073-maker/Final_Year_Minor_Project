.class public final Lj$/util/stream/d7;
.super Lj$/util/stream/f7;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final c:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x80

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lj$/util/stream/d7;->c:[I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/function/IntConsumer;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    int-to-long v1, v0

    .line 5
    cmp-long v1, v1, p2

    .line 6
    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lj$/util/stream/d7;->c:[I

    .line 10
    .line 11
    aget v1, v1, v0

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final accept(I)V
    .locals 2

    .line 1
    iget v0, p0, Lj$/util/stream/f7;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lj$/util/stream/f7;->b:I

    .line 6
    .line 7
    iget-object p0, p0, Lj$/util/stream/d7;->c:[I

    .line 8
    .line 9
    aput p1, p0, v0

    .line 10
    .line 11
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/time/a;->c(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
