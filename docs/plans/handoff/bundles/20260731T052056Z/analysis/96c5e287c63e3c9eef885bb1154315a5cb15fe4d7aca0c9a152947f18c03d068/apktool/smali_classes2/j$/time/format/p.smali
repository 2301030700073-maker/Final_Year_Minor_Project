.class public final Lj$/time/format/p;
.super Lj$/time/format/j;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final h:Lj$/time/LocalDate;


# instance fields
.field public final g:Lj$/time/chrono/ChronoLocalDate;


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
    move-result-object v0

    .line 8
    sput-object v0, Lj$/time/format/p;->h:Lj$/time/LocalDate;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lj$/time/temporal/n;IILj$/time/chrono/ChronoLocalDate;I)V
    .locals 6

    .line 1
    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

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
    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/n;IILj$/time/format/f0;I)V

    .line 9
    .line 10
    .line 11
    iput-object p4, v0, Lj$/time/format/p;->g:Lj$/time/chrono/ChronoLocalDate;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lj$/time/format/y;J)J
    .locals 7

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lj$/time/format/p;->g:Lj$/time/chrono/ChronoLocalDate;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lj$/time/format/y;->a:Lj$/time/temporal/TemporalAccessor;

    .line 10
    .line 11
    invoke-static {p1}, Lj$/time/a;->N(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v2}, Lj$/time/chrono/a;->h(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 20
    .line 21
    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    int-to-long v2, p1

    .line 28
    cmp-long p1, p2, v2

    .line 29
    .line 30
    sget-object v4, Lj$/time/format/j;->f:[J

    .line 31
    .line 32
    if-ltz p1, :cond_1

    .line 33
    .line 34
    iget p1, p0, Lj$/time/format/j;->b:I

    .line 35
    .line 36
    aget-wide v5, v4, p1

    .line 37
    .line 38
    add-long/2addr v2, v5

    .line 39
    cmp-long p1, p2, v2

    .line 40
    .line 41
    if-gez p1, :cond_1

    .line 42
    .line 43
    rem-long/2addr v0, v5

    .line 44
    return-wide v0

    .line 45
    :cond_1
    iget p0, p0, Lj$/time/format/j;->c:I

    .line 46
    .line 47
    aget-wide p0, v4, p0

    .line 48
    .line 49
    rem-long/2addr v0, p0

    .line 50
    return-wide v0
.end method

.method public final b(Lj$/time/format/w;)Z
    .locals 1

    .line 1
    iget-boolean v0, p1, Lj$/time/format/w;->c:Z

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
    invoke-super {p0, p1}, Lj$/time/format/j;->b(Lj$/time/format/w;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final c(Lj$/time/format/w;JII)I
    .locals 10

    .line 1
    iget-object v0, p0, Lj$/time/format/p;->g:Lj$/time/chrono/ChronoLocalDate;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lj$/time/format/w;->d()Lj$/time/chrono/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lj$/time/chrono/a;->h(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-instance v1, Lj$/time/format/o;

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p1

    .line 23
    move-wide v4, p2

    .line 24
    move v6, p4

    .line 25
    move v7, p5

    .line 26
    invoke-direct/range {v1 .. v7}, Lj$/time/format/o;-><init>(Lj$/time/format/p;Lj$/time/format/w;JII)V

    .line 27
    .line 28
    .line 29
    move-object p0, v3

    .line 30
    iget-object p1, p0, Lj$/time/format/w;->e:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lj$/time/format/w;->e:Ljava/util/ArrayList;

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v2, p0

    .line 46
    move-object p0, p1

    .line 47
    move-wide v4, p2

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    sub-int p1, p5, p4

    .line 50
    .line 51
    iget p2, v2, Lj$/time/format/j;->b:I

    .line 52
    .line 53
    if-ne p1, p2, :cond_4

    .line 54
    .line 55
    const-wide/16 v6, 0x0

    .line 56
    .line 57
    cmp-long p1, v4, v6

    .line 58
    .line 59
    if-ltz p1, :cond_4

    .line 60
    .line 61
    sget-object p1, Lj$/time/format/j;->f:[J

    .line 62
    .line 63
    aget-wide p2, p1, p2

    .line 64
    .line 65
    int-to-long v6, v0

    .line 66
    rem-long v8, v6, p2

    .line 67
    .line 68
    sub-long v8, v6, v8

    .line 69
    .line 70
    if-lez v0, :cond_2

    .line 71
    .line 72
    add-long/2addr v8, v4

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    sub-long/2addr v8, v4

    .line 75
    :goto_1
    cmp-long p1, v8, v6

    .line 76
    .line 77
    if-gez p1, :cond_3

    .line 78
    .line 79
    add-long/2addr p2, v8

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move-wide p2, v8

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move-wide p2, v4

    .line 84
    :goto_2
    iget-object p1, v2, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p5}, Lj$/time/format/w;->g(Lj$/time/temporal/n;JII)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    return p0
.end method

.method public final d()Lj$/time/format/j;
    .locals 8

    .line 1
    iget v0, p0, Lj$/time/format/j;->e:I

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
    new-instance v2, Lj$/time/format/p;

    .line 8
    .line 9
    iget-object v6, p0, Lj$/time/format/p;->g:Lj$/time/chrono/ChronoLocalDate;

    .line 10
    .line 11
    const/4 v7, -0x1

    .line 12
    iget-object v3, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 13
    .line 14
    iget v4, p0, Lj$/time/format/j;->b:I

    .line 15
    .line 16
    iget v5, p0, Lj$/time/format/j;->c:I

    .line 17
    .line 18
    invoke-direct/range {v2 .. v7}, Lj$/time/format/p;-><init>(Lj$/time/temporal/n;IILj$/time/chrono/ChronoLocalDate;I)V

    .line 19
    .line 20
    .line 21
    return-object v2
.end method

.method public final e(I)Lj$/time/format/j;
    .locals 6

    .line 1
    new-instance v0, Lj$/time/format/p;

    .line 2
    .line 3
    iget v1, p0, Lj$/time/format/j;->e:I

    .line 4
    .line 5
    add-int v5, v1, p1

    .line 6
    .line 7
    iget-object v1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 8
    .line 9
    iget v2, p0, Lj$/time/format/j;->b:I

    .line 10
    .line 11
    iget v3, p0, Lj$/time/format/j;->c:I

    .line 12
    .line 13
    iget-object v4, p0, Lj$/time/format/p;->g:Lj$/time/chrono/ChronoLocalDate;

    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lj$/time/format/p;-><init>(Lj$/time/temporal/n;IILj$/time/chrono/ChronoLocalDate;I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lj$/time/format/p;->g:Lj$/time/chrono/ChronoLocalDate;

    .line 7
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
    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

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
    iget v3, p0, Lj$/time/format/j;->b:I

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
    iget p0, p0, Lj$/time/format/j;->c:I

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
