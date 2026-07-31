.class public final Lj$/util/stream/r2;
.super Lj$/util/stream/i2;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/g2;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lj$/util/stream/g2;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lj$/util/stream/i2;->b:Lj$/util/stream/g2;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Lj$/util/stream/g2;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final k(JJLjava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lj$/util/stream/i2;->c:J

    .line 8
    .line 9
    cmp-long v0, p3, v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/g2;

    .line 15
    .line 16
    invoke-interface {v0}, Lj$/util/stream/g2;->count()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    cmp-long v0, p1, v4

    .line 21
    .line 22
    if-ltz v0, :cond_1

    .line 23
    .line 24
    sub-long v7, p1, v4

    .line 25
    .line 26
    sub-long v9, p3, v4

    .line 27
    .line 28
    iget-object v6, p0, Lj$/util/stream/i2;->b:Lj$/util/stream/g2;

    .line 29
    .line 30
    move-object/from16 v11, p5

    .line 31
    .line 32
    invoke-interface/range {v6 .. v11}, Lj$/util/stream/g2;->k(JJLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    cmp-long v0, p3, v4

    .line 38
    .line 39
    iget-object v1, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/g2;

    .line 40
    .line 41
    if-gtz v0, :cond_2

    .line 42
    .line 43
    move-wide v7, p1

    .line 44
    move-wide v9, p3

    .line 45
    move-object/from16 v11, p5

    .line 46
    .line 47
    move-object v6, v1

    .line 48
    invoke-interface/range {v6 .. v11}, Lj$/util/stream/g2;->k(JJLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_2
    sget-object v7, Lj$/util/stream/a7;->REFERENCE:Lj$/util/stream/a7;

    .line 54
    .line 55
    move-wide v2, p1

    .line 56
    move-object/from16 v6, p5

    .line 57
    .line 58
    invoke-interface/range {v1 .. v6}, Lj$/util/stream/g2;->k(JJLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-wide/16 v1, 0x0

    .line 63
    .line 64
    sub-long v4, p3, v4

    .line 65
    .line 66
    iget-object v0, p0, Lj$/util/stream/i2;->b:Lj$/util/stream/g2;

    .line 67
    .line 68
    move-wide v3, v4

    .line 69
    move-object/from16 v5, p5

    .line 70
    .line 71
    invoke-interface/range {v0 .. v5}, Lj$/util/stream/g2;->k(JJLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v7, p1, p0}, Lj$/util/stream/v3;->F(Lj$/util/stream/a7;Lj$/util/stream/g2;Lj$/util/stream/g2;)Lj$/util/stream/i2;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public final m([Ljava/lang/Object;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/g2;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lj$/util/stream/g2;->m([Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lj$/util/stream/g2;->count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    long-to-int v0, v0

    .line 14
    add-int/2addr p2, v0

    .line 15
    iget-object p0, p0, Lj$/util/stream/i2;->b:Lj$/util/stream/g2;

    .line 16
    .line 17
    invoke-interface {p0, p1, p2}, Lj$/util/stream/g2;->m([Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final p(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 4

    .line 1
    const-wide/32 v0, 0x7ffffff7

    .line 2
    .line 3
    .line 4
    iget-wide v2, p0, Lj$/util/stream/i2;->c:J

    .line 5
    .line 6
    cmp-long v0, v2, v0

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    long-to-int v0, v2

    .line 11
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lj$/util/stream/r2;->m([Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const-string p0, "Stream size exceeds max array size"

    .line 23
    .line 24
    invoke-static {p0}, Lj$/nio/file/j;->c(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/i3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lj$/util/stream/j3;-><init>(Lj$/util/stream/g2;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    .line 3
    iget-wide v2, p0, Lj$/util/stream/i2;->c:J

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v2, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/g2;

    .line 15
    .line 16
    aput-object v2, v0, v4

    .line 17
    .line 18
    iget-object p0, p0, Lj$/util/stream/i2;->b:Lj$/util/stream/g2;

    .line 19
    .line 20
    aput-object p0, v0, v1

    .line 21
    .line 22
    const-string p0, "ConcNode[%s.%s]"

    .line 23
    .line 24
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-array v0, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p0, v0, v4

    .line 36
    .line 37
    const-string p0, "ConcNode[size=%d]"

    .line 38
    .line 39
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
