.class public final Lj$/util/stream/a6;
.super Lj$/util/stream/w5;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public c:Lj$/util/stream/o6;


# virtual methods
.method public final accept(D)V
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/util/stream/a6;->c:Lj$/util/stream/o6;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/o6;->accept(D)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(J)V
    .locals 2

    .line 1
    const-wide/32 v0, 0x7ffffff7

    .line 2
    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-gez v0, :cond_1

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lj$/util/stream/o6;

    .line 15
    .line 16
    long-to-int p1, p1

    .line 17
    invoke-direct {v0, p1}, Lj$/util/stream/u6;-><init>(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lj$/util/stream/o6;

    .line 22
    .line 23
    invoke-direct {v0}, Lj$/util/stream/u6;-><init>()V

    .line 24
    .line 25
    .line 26
    :goto_0
    iput-object v0, p0, Lj$/util/stream/a6;->c:Lj$/util/stream/o6;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string p0, "Stream size exceeds max array size"

    .line 30
    .line 31
    invoke-static {p0}, Lj$/nio/file/j;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final end()V
    .locals 6

    .line 1
    iget-object v0, p0, Lj$/util/stream/a6;->c:Lj$/util/stream/o6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/util/stream/u6;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [D

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 10
    .line 11
    .line 12
    array-length v1, v0

    .line 13
    int-to-long v1, v1

    .line 14
    iget-object v3, p0, Lj$/util/stream/e5;->a:Lj$/util/stream/l5;

    .line 15
    .line 16
    invoke-interface {v3, v1, v2}, Lj$/util/stream/l5;->c(J)V

    .line 17
    .line 18
    .line 19
    iget-boolean p0, p0, Lj$/util/stream/w5;->b:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    array-length p0, v0

    .line 25
    :goto_0
    if-ge v1, p0, :cond_2

    .line 26
    .line 27
    aget-wide v4, v0, v1

    .line 28
    .line 29
    invoke-interface {v3, v4, v5}, Lj$/util/stream/l5;->accept(D)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    array-length p0, v0

    .line 36
    :goto_1
    if-ge v1, p0, :cond_2

    .line 37
    .line 38
    aget-wide v4, v0, v1

    .line 39
    .line 40
    invoke-interface {v3}, Lj$/util/stream/l5;->e()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    invoke-interface {v3, v4, v5}, Lj$/util/stream/l5;->accept(D)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/l5;->end()V

    .line 54
    .line 55
    .line 56
    return-void
.end method
