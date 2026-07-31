.class public final synthetic Lj$/util/d0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/util/f0;
.implements Lj$/util/x;


# instance fields
.field public final synthetic a:Ljava/util/PrimitiveIterator$OfDouble;


# direct methods
.method public synthetic constructor <init>(Ljava/util/PrimitiveIterator$OfDouble;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    instance-of v0, p1, Lj$/util/d0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lj$/util/d0;

    .line 8
    .line 9
    iget-object p1, p1, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

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
    iget-object p0, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 8
    iget-object p0, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final synthetic hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

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
    iget-object p0, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

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

.method public final synthetic next()Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

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
    iget-object p0, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic nextDouble()D
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final synthetic remove()V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/d0;->a:Ljava/util/PrimitiveIterator$OfDouble;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
