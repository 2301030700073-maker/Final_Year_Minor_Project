.class public final synthetic Lj$/util/h0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# instance fields
.field public final synthetic a:Lj$/util/i0;


# direct methods
.method public synthetic constructor <init>(Lj$/util/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/util/h0;->a:Lj$/util/i0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/h0;->a:Lj$/util/i0;

    .line 2
    .line 3
    instance-of v0, p1, Lj$/util/h0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lj$/util/h0;

    .line 8
    .line 9
    iget-object p1, p1, Lj$/util/h0;->a:Lj$/util/i0;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/h0;->a:Lj$/util/i0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lj$/util/n0;->forEachRemaining(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lj$/util/h0;->a:Lj$/util/i0;

    invoke-interface {p0, p1}, Lj$/util/i0;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 8
    iget-object p0, p0, Lj$/util/h0;->a:Lj$/util/i0;

    invoke-interface {p0, p1}, Lj$/util/i0;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/h0;->a:Lj$/util/i0;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/h0;->a:Lj$/util/i0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic next()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/h0;->a:Lj$/util/i0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/i0;->next()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 0

    .line 8
    iget-object p0, p0, Lj$/util/h0;->a:Lj$/util/i0;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic nextInt()I
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/h0;->a:Lj$/util/i0;

    .line 2
    .line 3
    invoke-interface {p0}, Lj$/util/i0;->nextInt()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic remove()V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/h0;->a:Lj$/util/i0;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
