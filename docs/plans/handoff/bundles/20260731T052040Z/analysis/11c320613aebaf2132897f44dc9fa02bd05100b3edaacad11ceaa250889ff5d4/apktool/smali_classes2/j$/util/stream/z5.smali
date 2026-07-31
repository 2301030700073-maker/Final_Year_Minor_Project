.class public abstract Lj$/util/stream/z5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static a(JJJ)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    sub-long/2addr p0, p2

    .line 10
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0

    .line 19
    :cond_0
    return-wide v1
.end method

.method public static b(Lj$/util/stream/e7;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;
    .locals 2

    .line 1
    invoke-static {p2, p3, p4, p5}, Lj$/util/stream/z5;->c(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p4

    .line 5
    sget-object v0, Lj$/util/stream/x5;->a:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    new-instance p0, Lj$/util/stream/t7;

    .line 26
    .line 27
    check-cast p1, Lj$/util/t0;

    .line 28
    .line 29
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/w7;-><init>(Lj$/util/b1;JJ)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p3, "Unknown shape "

    .line 38
    .line 39
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    new-instance p0, Lj$/util/stream/v7;

    .line 54
    .line 55
    check-cast p1, Lj$/util/y0;

    .line 56
    .line 57
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/w7;-><init>(Lj$/util/b1;JJ)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_2
    new-instance p0, Lj$/util/stream/u7;

    .line 62
    .line 63
    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 64
    .line 65
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/w7;-><init>(Lj$/util/b1;JJ)V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_3
    new-instance p0, Lj$/util/stream/x7;

    .line 70
    .line 71
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/x7;-><init>(Lj$/util/Spliterator;JJ)V

    .line 72
    .line 73
    .line 74
    return-object p0
.end method

.method public static c(JJ)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    const-wide v3, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    add-long/2addr p0, p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-wide p0, v3

    .line 15
    :goto_0
    cmp-long p2, p0, v0

    .line 16
    .line 17
    if-ltz p2, :cond_1

    .line 18
    .line 19
    return-wide p0

    .line 20
    :cond_1
    return-wide v3
.end method

.method public static d(J)I
    .locals 3

    .line 1
    sget v0, Lj$/util/stream/d7;->t:I

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    cmp-long p0, p0, v1

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget p0, Lj$/util/stream/d7;->u:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    or-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public static e(Lj$/util/stream/b0;JJ)Lj$/util/stream/w5;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lj$/util/stream/w5;

    .line 8
    .line 9
    invoke-static {p3, p4}, Lj$/util/stream/z5;->d(J)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    move-object v2, p0

    .line 14
    move-wide v4, p1

    .line 15
    move-wide v6, p3

    .line 16
    invoke-direct/range {v1 .. v7}, Lj$/util/stream/w5;-><init>(Lj$/util/stream/b0;IJJ)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    move-wide v4, p1

    .line 21
    invoke-static {v4, v5}, Lj$/nio/file/m;->a(J)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static f(Lj$/util/stream/b1;JJ)Lj$/util/stream/s5;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lj$/util/stream/s5;

    .line 8
    .line 9
    invoke-static {p3, p4}, Lj$/util/stream/z5;->d(J)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    move-object v2, p0

    .line 14
    move-wide v4, p1

    .line 15
    move-wide v6, p3

    .line 16
    invoke-direct/range {v1 .. v7}, Lj$/util/stream/s5;-><init>(Lj$/util/stream/b1;IJJ)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    move-wide v4, p1

    .line 21
    invoke-static {v4, v5}, Lj$/nio/file/m;->a(J)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static g(Lj$/util/stream/k1;JJ)Lj$/util/stream/u5;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lj$/util/stream/u5;

    .line 8
    .line 9
    invoke-static {p3, p4}, Lj$/util/stream/z5;->d(J)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    move-object v2, p0

    .line 14
    move-wide v4, p1

    .line 15
    move-wide v6, p3

    .line 16
    invoke-direct/range {v1 .. v7}, Lj$/util/stream/u5;-><init>(Lj$/util/stream/k1;IJJ)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    move-wide v4, p1

    .line 21
    invoke-static {v4, v5}, Lj$/nio/file/m;->a(J)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static h(Lj$/util/stream/g5;JJ)Lj$/util/stream/q5;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lj$/util/stream/q5;

    .line 8
    .line 9
    invoke-static {p3, p4}, Lj$/util/stream/z5;->d(J)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    move-object v2, p0

    .line 14
    move-wide v4, p1

    .line 15
    move-wide v6, p3

    .line 16
    invoke-direct/range {v1 .. v7}, Lj$/util/stream/q5;-><init>(Lj$/util/stream/g5;IJJ)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    move-wide v4, p1

    .line 21
    invoke-static {v4, v5}, Lj$/nio/file/m;->a(J)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method
