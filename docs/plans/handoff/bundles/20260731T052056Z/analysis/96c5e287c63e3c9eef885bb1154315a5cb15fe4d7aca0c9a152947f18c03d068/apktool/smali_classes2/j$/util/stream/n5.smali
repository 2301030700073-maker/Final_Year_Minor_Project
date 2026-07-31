.class public final Lj$/util/stream/n5;
.super Lj$/util/stream/b5;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic l:J

.field public final synthetic m:J


# direct methods
.method public constructor <init>(Lj$/util/stream/d5;IJJ)V
    .locals 0

    .line 1
    iput-wide p3, p0, Lj$/util/stream/n5;->l:J

    .line 2
    .line 3
    iput-wide p5, p0, Lj$/util/stream/n5;->m:J

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final J(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/g2;
    .locals 12

    .line 1
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->F(Lj$/util/Spliterator;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    if-lez v4, :cond_1

    .line 11
    .line 12
    const/16 v4, 0x4000

    .line 13
    .line 14
    invoke-interface {p2, v4}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    move-object v0, p1

    .line 21
    :goto_0
    iget v1, v0, Lj$/util/stream/a;->e:I

    .line 22
    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lj$/util/stream/a;->b:Lj$/util/stream/a;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lj$/util/stream/a;->H()Lj$/util/stream/a7;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    iget-wide v8, p0, Lj$/util/stream/n5;->l:J

    .line 33
    .line 34
    iget-wide v10, p0, Lj$/util/stream/n5;->m:J

    .line 35
    .line 36
    move-object v7, p2

    .line 37
    invoke-static/range {v6 .. v11}, Lj$/util/stream/v3;->Y(Lj$/util/stream/a7;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p1, p0, v5, p3}, Lj$/util/stream/v3;->A(Lj$/util/stream/a;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_1
    move-object v7, p2

    .line 47
    sget-object p2, Lj$/util/stream/z6;->ORDERED:Lj$/util/stream/z6;

    .line 48
    .line 49
    iget v4, p1, Lj$/util/stream/a;->f:I

    .line 50
    .line 51
    invoke-virtual {p2, v4}, Lj$/util/stream/z6;->i(I)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1, v7}, Lj$/util/stream/a;->S(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    iget-wide p1, p0, Lj$/util/stream/n5;->l:J

    .line 62
    .line 63
    iget-wide v8, p0, Lj$/util/stream/n5;->m:J

    .line 64
    .line 65
    cmp-long v4, p1, v0

    .line 66
    .line 67
    if-gtz v4, :cond_3

    .line 68
    .line 69
    cmp-long v4, v8, v2

    .line 70
    .line 71
    sub-long/2addr v0, p1

    .line 72
    if-ltz v4, :cond_2

    .line 73
    .line 74
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide p1

    .line 78
    move-wide v8, p1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move-wide v8, v0

    .line 81
    :goto_1
    move-wide v10, v8

    .line 82
    move-wide v8, v2

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move-wide v10, v8

    .line 85
    move-wide v8, p1

    .line 86
    :goto_2
    new-instance v6, Lj$/util/stream/z7;

    .line 87
    .line 88
    invoke-direct/range {v6 .. v11}, Lj$/util/stream/b8;-><init>(Lj$/util/Spliterator;JJ)V

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v6, v5, p3}, Lj$/util/stream/v3;->A(Lj$/util/stream/a;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/g2;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_4
    new-instance v0, Lj$/util/stream/v5;

    .line 97
    .line 98
    iget-wide v5, p0, Lj$/util/stream/n5;->l:J

    .line 99
    .line 100
    move-object v3, v7

    .line 101
    iget-wide v7, p0, Lj$/util/stream/n5;->m:J

    .line 102
    .line 103
    move-object v1, p0

    .line 104
    move-object v2, p1

    .line 105
    move-object v4, p3

    .line 106
    invoke-direct/range {v0 .. v8}, Lj$/util/stream/v5;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Lj$/util/stream/g2;

    .line 114
    .line 115
    return-object p0
.end method

.method public final K(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 12

    .line 1
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->F(Lj$/util/Spliterator;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v2

    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v0, v2, v4

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x4000

    .line 12
    .line 13
    invoke-interface {p2, v0}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v6, Lj$/util/stream/t7;

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->S(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    iget-wide v8, p0, Lj$/util/stream/n5;->l:J

    .line 26
    .line 27
    iget-wide v0, p0, Lj$/util/stream/n5;->m:J

    .line 28
    .line 29
    invoke-static {v8, v9, v0, v1}, Lj$/util/stream/v3;->z(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v10

    .line 33
    invoke-direct/range {v6 .. v11}, Lj$/util/stream/t7;-><init>(Lj$/util/Spliterator;JJ)V

    .line 34
    .line 35
    .line 36
    return-object v6

    .line 37
    :cond_0
    sget-object v0, Lj$/util/stream/z6;->ORDERED:Lj$/util/stream/z6;

    .line 38
    .line 39
    iget v7, p1, Lj$/util/stream/a;->f:I

    .line 40
    .line 41
    invoke-virtual {v0, v7}, Lj$/util/stream/z6;->i(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->S(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget-wide v8, p0, Lj$/util/stream/n5;->l:J

    .line 52
    .line 53
    iget-wide v0, p0, Lj$/util/stream/n5;->m:J

    .line 54
    .line 55
    cmp-long v6, v8, v2

    .line 56
    .line 57
    if-gtz v6, :cond_2

    .line 58
    .line 59
    cmp-long v6, v0, v4

    .line 60
    .line 61
    sub-long/2addr v2, v8

    .line 62
    if-ltz v6, :cond_1

    .line 63
    .line 64
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move-wide v0, v2

    .line 70
    :goto_0
    move-wide v8, v4

    .line 71
    :cond_2
    move-wide v10, v0

    .line 72
    new-instance v6, Lj$/util/stream/z7;

    .line 73
    .line 74
    invoke-direct/range {v6 .. v11}, Lj$/util/stream/b8;-><init>(Lj$/util/Spliterator;JJ)V

    .line 75
    .line 76
    .line 77
    return-object v6

    .line 78
    :cond_3
    new-instance v0, Lj$/util/stream/v5;

    .line 79
    .line 80
    new-instance v4, Lj$/util/stream/w0;

    .line 81
    .line 82
    const/16 v2, 0xd

    .line 83
    .line 84
    invoke-direct {v4, v2}, Lj$/util/stream/w0;-><init>(I)V

    .line 85
    .line 86
    .line 87
    iget-wide v5, p0, Lj$/util/stream/n5;->l:J

    .line 88
    .line 89
    iget-wide v7, p0, Lj$/util/stream/n5;->m:J

    .line 90
    .line 91
    move-object v1, p0

    .line 92
    move-object v2, p1

    .line 93
    move-object v3, p2

    .line 94
    invoke-direct/range {v0 .. v8}, Lj$/util/stream/v5;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lj$/util/stream/g2;

    .line 102
    .line 103
    invoke-interface {v0}, Lj$/util/stream/g2;->spliterator()Lj$/util/Spliterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method

.method public final M(ILj$/util/stream/l5;)Lj$/util/stream/l5;
    .locals 0

    .line 1
    new-instance p1, Lj$/util/stream/m5;

    .line 2
    .line 3
    invoke-direct {p1, p0, p2}, Lj$/util/stream/m5;-><init>(Lj$/util/stream/n5;Lj$/util/stream/l5;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
