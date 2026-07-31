.class public final Lj$/time/format/l;
.super Lj$/time/format/h;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x7d0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lj$/time/temporal/TemporalField;IIII)V
    .locals 6

    .line 1
    sget-object v4, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lj$/time/format/h;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;I)V

    .line 9
    .line 10
    .line 11
    iput p4, v0, Lj$/time/format/l;->g:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lj$/time/format/r;J)J
    .locals 7

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget p1, p0, Lj$/time/format/l;->g:I

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    cmp-long p1, p2, v2

    .line 9
    .line 10
    sget-object v4, Lj$/time/format/h;->f:[J

    .line 11
    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Lj$/time/format/h;->b:I

    .line 15
    .line 16
    aget-wide v5, v4, p1

    .line 17
    .line 18
    add-long/2addr v2, v5

    .line 19
    cmp-long p1, p2, v2

    .line 20
    .line 21
    if-gez p1, :cond_0

    .line 22
    .line 23
    rem-long/2addr v0, v5

    .line 24
    return-wide v0

    .line 25
    :cond_0
    iget p0, p0, Lj$/time/format/h;->c:I

    .line 26
    .line 27
    aget-wide p0, v4, p0

    .line 28
    .line 29
    rem-long/2addr v0, p0

    .line 30
    return-wide v0
.end method

.method public final b(Lj$/time/format/p;)Z
    .locals 1

    .line 1
    iget-boolean v0, p1, Lj$/time/format/p;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lj$/time/format/h;->b(Lj$/time/format/p;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final c(Lj$/time/format/p;JII)I
    .locals 7

    .line 1
    sub-int v0, p5, p4

    .line 2
    .line 3
    iget v1, p0, Lj$/time/format/h;->b:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, p2, v2

    .line 10
    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lj$/time/format/h;->f:[J

    .line 14
    .line 15
    aget-wide v1, v0, v1

    .line 16
    .line 17
    iget v0, p0, Lj$/time/format/l;->g:I

    .line 18
    .line 19
    int-to-long v3, v0

    .line 20
    rem-long v5, v3, v1

    .line 21
    .line 22
    sub-long v5, v3, v5

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    add-long/2addr v5, p2

    .line 27
    :goto_0
    move-wide p2, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    sub-long/2addr v5, p2

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    cmp-long v0, p2, v3

    .line 32
    .line 33
    if-gez v0, :cond_1

    .line 34
    .line 35
    add-long/2addr p2, v1

    .line 36
    :cond_1
    move-wide v2, p2

    .line 37
    iget-object v1, p0, Lj$/time/format/h;->a:Lj$/time/temporal/TemporalField;

    .line 38
    .line 39
    move-object v0, p1

    .line 40
    move v4, p4

    .line 41
    move v5, p5

    .line 42
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/p;->f(Lj$/time/temporal/TemporalField;JII)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final d()Lj$/time/format/h;
    .locals 8

    .line 1
    iget v0, p0, Lj$/time/format/h;->e:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v2, Lj$/time/format/l;

    .line 8
    .line 9
    iget v6, p0, Lj$/time/format/l;->g:I

    .line 10
    .line 11
    const/4 v7, -0x1

    .line 12
    iget-object v3, p0, Lj$/time/format/h;->a:Lj$/time/temporal/TemporalField;

    .line 13
    .line 14
    iget v4, p0, Lj$/time/format/h;->b:I

    .line 15
    .line 16
    iget v5, p0, Lj$/time/format/h;->c:I

    .line 17
    .line 18
    invoke-direct/range {v2 .. v7}, Lj$/time/format/l;-><init>(Lj$/time/temporal/TemporalField;IIII)V

    .line 19
    .line 20
    .line 21
    return-object v2
.end method

.method public final e(I)Lj$/time/format/h;
    .locals 6

    .line 1
    new-instance v0, Lj$/time/format/l;

    .line 2
    .line 3
    iget v1, p0, Lj$/time/format/h;->e:I

    .line 4
    .line 5
    add-int v5, v1, p1

    .line 6
    .line 7
    iget-object v1, p0, Lj$/time/format/h;->a:Lj$/time/temporal/TemporalField;

    .line 8
    .line 9
    iget v2, p0, Lj$/time/format/h;->b:I

    .line 10
    .line 11
    iget v3, p0, Lj$/time/format/h;->c:I

    .line 12
    .line 13
    iget v4, p0, Lj$/time/format/l;->g:I

    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lj$/time/format/l;-><init>(Lj$/time/temporal/TemporalField;IIII)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lj$/time/format/l;->g:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v0}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "ReducedValue("

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lj$/time/format/h;->a:Lj$/time/temporal/TemporalField;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ","

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v3, p0, Lj$/time/format/h;->b:I

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget p0, p0, Lj$/time/format/h;->c:I

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p0, ")"

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
