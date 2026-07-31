.class public final Lj$/util/stream/x8;
.super Lj$/util/stream/z8;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/function/LongConsumer;
.implements Lj$/util/y0;


# instance fields
.field public e:J

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/Spliterator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lj$/util/stream/x8;->f:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lj$/util/stream/z8;-><init>(Lj$/util/Spliterator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/z8;I)V
    .locals 0

    .line 7
    iput p3, p0, Lj$/util/stream/x8;->f:I

    invoke-direct {p0, p1, p2}, Lj$/util/stream/z8;-><init>(Lj$/util/Spliterator;Lj$/util/stream/z8;)V

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/z8;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x3f

    .line 6
    .line 7
    iput v0, p0, Lj$/util/stream/z8;->d:I

    .line 8
    .line 9
    iput-wide p1, p0, Lj$/util/stream/x8;->e:J

    .line 10
    .line 11
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/c;->c(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Lj$/util/function/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 1
    iget v0, p0, Lj$/util/stream/x8;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lj$/util/y0;

    .line 7
    .line 8
    new-instance v0, Lj$/util/stream/x8;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p1, p0, v1}, Lj$/util/stream/x8;-><init>(Lj$/util/Spliterator;Lj$/util/stream/z8;I)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_0
    check-cast p1, Lj$/util/y0;

    .line 16
    .line 17
    new-instance v0, Lj$/util/stream/x8;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p1, p0, v1}, Lj$/util/stream/x8;-><init>(Lj$/util/Spliterator;Lj$/util/stream/z8;I)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/x8;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lj$/util/c;->g(Lj$/util/y0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 1

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Lj$/util/y0;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lj$/util/stream/x8;->f:I

    packed-switch v0, :pswitch_data_0

    .line 82
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/x8;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p0

    return p0

    .line 83
    :pswitch_0
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/x8;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    .line 81
    invoke-static {p0, p1}, Lj$/util/c;->l(Lj$/util/y0;Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public final tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 4

    .line 1
    iget v0, p0, Lj$/util/stream/x8;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lj$/util/stream/z8;->a:Lj$/util/Spliterator;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-boolean p1, p0, Lj$/util/stream/z8;->c:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lj$/util/stream/z8;->a()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    check-cast v1, Lj$/util/y0;

    .line 21
    .line 22
    invoke-interface {v1, p0}, Lj$/util/y0;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-wide p0, p0, Lj$/util/stream/x8;->e:J

    .line 30
    .line 31
    invoke-interface {v2, p0, p1}, Ljava/util/function/LongPredicate;->test(J)Z

    .line 32
    .line 33
    .line 34
    throw v2

    .line 35
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lj$/util/stream/z8;->c:Z

    .line 36
    .line 37
    return v3

    .line 38
    :pswitch_0
    iget-boolean v0, p0, Lj$/util/stream/z8;->c:Z

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iput-boolean v3, p0, Lj$/util/stream/z8;->c:Z

    .line 43
    .line 44
    check-cast v1, Lj$/util/y0;

    .line 45
    .line 46
    invoke-interface {v1, p0}, Lj$/util/y0;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Lj$/util/stream/z8;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-wide p0, p0, Lj$/util/stream/x8;->e:J

    .line 60
    .line 61
    invoke-interface {v2, p0, p1}, Ljava/util/function/LongPredicate;->test(J)Z

    .line 62
    .line 63
    .line 64
    throw v2

    .line 65
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget-wide v1, p0, Lj$/util/stream/x8;->e:J

    .line 68
    .line 69
    invoke-interface {p1, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    check-cast v1, Lj$/util/y0;

    .line 74
    .line 75
    invoke-interface {v1, p1}, Lj$/util/y0;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    :cond_5
    :goto_2
    return v0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    iget v0, p0, Lj$/util/stream/x8;->f:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/z8;->trySplit()Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 29
    :pswitch_0
    invoke-virtual {p0}, Lj$/util/stream/x8;->trySplit()Lj$/util/y0;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic trySplit()Lj$/util/b1;
    .locals 1

    iget v0, p0, Lj$/util/stream/x8;->f:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/z8;->trySplit()Lj$/util/b1;

    move-result-object p0

    return-object p0

    .line 30
    :pswitch_0
    invoke-virtual {p0}, Lj$/util/stream/x8;->trySplit()Lj$/util/y0;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public trySplit()Lj$/util/y0;
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/x8;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lj$/util/stream/z8;->trySplit()Lj$/util/y0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/z8;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-super {p0}, Lj$/util/stream/z8;->trySplit()Lj$/util/Spliterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lj$/util/y0;

    .line 26
    .line 27
    :goto_0
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
