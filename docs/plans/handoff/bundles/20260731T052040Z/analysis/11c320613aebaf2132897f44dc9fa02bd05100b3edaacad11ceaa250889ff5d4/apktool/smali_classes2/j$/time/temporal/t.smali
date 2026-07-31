.class public final Lj$/time/temporal/t;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/time/temporal/p;


# static fields
.field public static final f:Lj$/time/temporal/s;

.field public static final g:Lj$/time/temporal/s;

.field public static final h:Lj$/time/temporal/s;

.field public static final i:Lj$/time/temporal/s;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj$/time/temporal/u;

.field public final c:Lj$/time/temporal/TemporalUnit;

.field public final d:Lj$/time/temporal/TemporalUnit;

.field public final e:Lj$/time/temporal/s;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    const-wide/16 v2, 0x7

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lj$/time/temporal/t;->f:Lj$/time/temporal/s;

    .line 10
    .line 11
    const-wide/16 v3, 0x4

    .line 12
    .line 13
    const-wide/16 v5, 0x6

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-static/range {v1 .. v6}, Lj$/time/temporal/s;->g(JJJ)Lj$/time/temporal/s;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lj$/time/temporal/t;->g:Lj$/time/temporal/s;

    .line 22
    .line 23
    const-wide/16 v3, 0x34

    .line 24
    .line 25
    const-wide/16 v5, 0x36

    .line 26
    .line 27
    invoke-static/range {v1 .. v6}, Lj$/time/temporal/s;->g(JJJ)Lj$/time/temporal/s;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lj$/time/temporal/t;->h:Lj$/time/temporal/s;

    .line 32
    .line 33
    const-wide/16 v5, 0x35

    .line 34
    .line 35
    const-wide/16 v1, 0x1

    .line 36
    .line 37
    invoke-static/range {v1 .. v6}, Lj$/time/temporal/s;->g(JJJ)Lj$/time/temporal/s;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lj$/time/temporal/t;->i:Lj$/time/temporal/s;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lj$/time/temporal/u;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/time/temporal/t;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 7
    .line 8
    iput-object p3, p0, Lj$/time/temporal/t;->c:Lj$/time/temporal/TemporalUnit;

    .line 9
    .line 10
    iput-object p4, p0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    .line 11
    .line 12
    iput-object p5, p0, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    .line 13
    .line 14
    return-void
.end method

.method public static a(II)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0x7

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    add-int/2addr p1, p0

    .line 6
    div-int/lit8 p1, p1, 0x7

    .line 7
    .line 8
    return p1
.end method


# virtual methods
.method public final F(Lj$/time/temporal/TemporalAccessor;)J
    .locals 3

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    :goto_0
    int-to-long p0, p0

    .line 12
    return-wide p0

    .line 13
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 14
    .line 15
    if-ne v1, v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/t;->h(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0, p1}, Lj$/time/temporal/t;->a(II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 37
    .line 38
    if-ne v1, v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 45
    .line 46
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/t;->h(II)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-static {p0, p1}, Lj$/time/temporal/t;->a(II)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lj$/time/temporal/u;->h:Lj$/time/temporal/h;

    .line 60
    .line 61
    if-ne v1, v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->d(Lj$/time/temporal/TemporalAccessor;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 69
    .line 70
    if-ne v1, v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->c(Lj$/time/temporal/TemporalAccessor;)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "unreachable, rangeUnit: "

    .line 82
    .line 83
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ", this: "

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method

.method public final H(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 4

    .line 1
    iget-object v0, p0, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v2, p0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    .line 15
    .line 16
    sget-object v3, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 21
    .line 22
    iget-object v1, v0, Lj$/time/temporal/u;->c:Lj$/time/temporal/t;

    .line 23
    .line 24
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v0, v0, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    long-to-int p2, p2

    .line 39
    invoke-virtual {p0, p1, p2, v0, v1}, Lj$/time/temporal/t;->e(Lj$/time/chrono/l;III)Lj$/time/chrono/b;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    sub-int/2addr v0, v1

    .line 45
    int-to-long p2, v0

    .line 46
    iget-object p0, p0, Lj$/time/temporal/t;->c:Lj$/time/temporal/TemporalUnit;

    .line 47
    .line 48
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/l;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final b(Lj$/time/temporal/TemporalAccessor;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 2
    .line 3
    iget-object p0, p0, Lj$/time/temporal/u;->a:Lj$/time/c;

    .line 4
    .line 5
    invoke-virtual {p0}, Lj$/time/c;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr p1, p0

    .line 16
    invoke-static {p1}, Lj$/time/temporal/q;->e(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    add-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    return p0
.end method

.method public final c(Lj$/time/temporal/TemporalAccessor;)I
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 6
    .line 7
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0, v3, v0}, Lj$/time/temporal/t;->h(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0, v3}, Lj$/time/temporal/t;->a(II)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-wide v4, p1, Lj$/time/temporal/s;->d:J

    .line 35
    .line 36
    long-to-int p1, v4

    .line 37
    iget-object p0, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 38
    .line 39
    iget p0, p0, Lj$/time/temporal/u;->b:I

    .line 40
    .line 41
    add-int/2addr p1, p0

    .line 42
    invoke-static {v0, p1}, Lj$/time/temporal/t;->a(II)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-lt v3, p0, :cond_1

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    :cond_1
    return v1
.end method

.method public final d(Lj$/time/temporal/TemporalAccessor;)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 6
    .line 7
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0, v2, v0}, Lj$/time/temporal/t;->h(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0, v2}, Lj$/time/temporal/t;->a(II)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1}, Lj$/time/chrono/l;->J(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    int-to-long v0, v2

    .line 30
    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 31
    .line 32
    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/b;->z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->d(Lj$/time/temporal/TemporalAccessor;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_0
    const/16 v2, 0x32

    .line 42
    .line 43
    if-le v3, v2, :cond_1

    .line 44
    .line 45
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-wide v1, p1, Lj$/time/temporal/s;->d:J

    .line 50
    .line 51
    long-to-int p1, v1

    .line 52
    iget-object p0, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 53
    .line 54
    iget p0, p0, Lj$/time/temporal/u;->b:I

    .line 55
    .line 56
    add-int/2addr p1, p0

    .line 57
    invoke-static {v0, p1}, Lj$/time/temporal/t;->a(II)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-lt v3, p0, :cond_1

    .line 62
    .line 63
    sub-int/2addr v3, p0

    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    :cond_1
    return v3
.end method

.method public final e(Lj$/time/chrono/l;III)Lj$/time/chrono/b;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, p2, v0, v0}, Lj$/time/chrono/l;->S(III)Lj$/time/chrono/b;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, v0, p2}, Lj$/time/temporal/t;->h(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-interface {p1}, Lj$/time/chrono/b;->W()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object p0, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 19
    .line 20
    iget p0, p0, Lj$/time/temporal/u;->b:I

    .line 21
    .line 22
    add-int/2addr v1, p0

    .line 23
    invoke-static {p2, v1}, Lj$/time/temporal/t;->a(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    sub-int/2addr p0, v0

    .line 28
    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    neg-int p2, p2

    .line 33
    sub-int/2addr p4, v0

    .line 34
    add-int/2addr p4, p2

    .line 35
    sub-int/2addr p0, v0

    .line 36
    mul-int/lit8 p0, p0, 0x7

    .line 37
    .line 38
    add-int/2addr p0, p4

    .line 39
    int-to-long p2, p0

    .line 40
    sget-object p0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 41
    .line 42
    invoke-interface {p1, p2, p3, p0}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final f(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/s;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1, v0}, Lj$/time/temporal/t;->h(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-wide v0, p1, Lj$/time/temporal/s;->a:J

    .line 18
    .line 19
    long-to-int p2, v0

    .line 20
    invoke-static {p0, p2}, Lj$/time/temporal/t;->a(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    int-to-long v0, p2

    .line 25
    iget-wide p1, p1, Lj$/time/temporal/s;->d:J

    .line 26
    .line 27
    long-to-int p1, p1

    .line 28
    invoke-static {p0, p1}, Lj$/time/temporal/t;->a(II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    int-to-long p0, p0

    .line 33
    invoke-static {v0, v1, p0, p1}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;
    .locals 6

    .line 1
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lj$/time/temporal/t;->h:Lj$/time/temporal/s;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0, v2, v1}, Lj$/time/temporal/t;->h(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1, v2}, Lj$/time/temporal/t;->a(II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p1}, Lj$/time/chrono/l;->J(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    add-int/lit8 v2, v2, 0x7

    .line 39
    .line 40
    int-to-long v0, v2

    .line 41
    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 42
    .line 43
    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/b;->z(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->o(Lj$/time/temporal/p;)Lj$/time/temporal/s;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-wide v4, v0, Lj$/time/temporal/s;->d:J

    .line 57
    .line 58
    long-to-int v0, v4

    .line 59
    iget-object v4, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 60
    .line 61
    iget v4, v4, Lj$/time/temporal/u;->b:I

    .line 62
    .line 63
    add-int/2addr v4, v0

    .line 64
    invoke-static {v1, v4}, Lj$/time/temporal/t;->a(II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-lt v3, v1, :cond_2

    .line 69
    .line 70
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1, p1}, Lj$/time/chrono/l;->J(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sub-int/2addr v0, v2

    .line 79
    add-int/lit8 v0, v0, 0x8

    .line 80
    .line 81
    int-to-long v0, v0

    .line 82
    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 83
    .line 84
    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 94
    .line 95
    int-to-long p0, v1

    .line 96
    const-wide/16 v0, 0x1

    .line 97
    .line 98
    invoke-static {v0, v1, p0, p1}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public final h(II)I
    .locals 1

    .line 1
    sub-int/2addr p1, p2

    .line 2
    invoke-static {p1}, Lj$/time/temporal/q;->e(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    neg-int p2, p1

    .line 7
    add-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    iget-object p0, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 10
    .line 11
    iget p0, p0, Lj$/time/temporal/u;->b:I

    .line 12
    .line 13
    if-le v0, p0, :cond_0

    .line 14
    .line 15
    rsub-int/lit8 p0, p1, 0x7

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    return p2
.end method

.method public final isDateBased()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final k(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 1

    .line 1
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 10
    .line 11
    iget-object p0, p0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 18
    .line 19
    if-ne p0, v0, :cond_1

    .line 20
    .line 21
    sget-object p0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 22
    .line 23
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 29
    .line 30
    if-ne p0, v0, :cond_2

    .line 31
    .line 32
    sget-object p0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 33
    .line 34
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_2
    sget-object v0, Lj$/time/temporal/u;->h:Lj$/time/temporal/h;

    .line 40
    .line 41
    if-ne p0, v0, :cond_3

    .line 42
    .line 43
    sget-object p0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 44
    .line 45
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_3
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 51
    .line 52
    if-ne p0, v0, :cond_4

    .line 53
    .line 54
    sget-object p0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 55
    .line 56
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->e(Lj$/time/temporal/p;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0

    .line 61
    :cond_4
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public final n(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;
    .locals 3

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 11
    .line 12
    if-ne v1, v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/t;->f(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/s;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 22
    .line 23
    if-ne v1, v0, :cond_2

    .line 24
    .line 25
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/t;->f(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/s;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_2
    sget-object v0, Lj$/time/temporal/u;->h:Lj$/time/temporal/h;

    .line 33
    .line 34
    if-ne v1, v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lj$/time/temporal/t;->g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_3
    sget-object p1, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 42
    .line 43
    if-ne v1, p1, :cond_4

    .line 44
    .line 45
    sget-object p0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 46
    .line 47
    iget-object p0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "unreachable, rangeUnit: "

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ", this: "

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public final o(Ljava/util/Map;Lj$/time/format/d0;Lj$/time/format/e0;)Lj$/time/temporal/TemporalAccessor;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Lj$/com/android/tools/r8/a;->D(J)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    sget-object v6, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    iget-object v8, v0, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    .line 25
    .line 26
    iget-object v9, v0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 27
    .line 28
    const/4 v10, 0x1

    .line 29
    iget-object v11, v0, Lj$/time/temporal/t;->d:Lj$/time/temporal/TemporalUnit;

    .line 30
    .line 31
    if-ne v11, v6, :cond_0

    .line 32
    .line 33
    invoke-virtual {v8, v3, v4, v0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, v9, Lj$/time/temporal/u;->a:Lj$/time/c;

    .line 38
    .line 39
    invoke-virtual {v3}, Lj$/time/c;->getValue()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    sub-int/2addr v3, v10

    .line 44
    sub-int/2addr v2, v10

    .line 45
    add-int/2addr v2, v3

    .line 46
    invoke-static {v2}, Lj$/time/temporal/q;->e(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/2addr v2, v10

    .line 51
    int-to-long v2, v2

    .line 52
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 56
    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-object v7

    .line 65
    :cond_0
    sget-object v3, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 66
    .line 67
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_1

    .line 72
    .line 73
    move-object v15, v7

    .line 74
    goto/16 :goto_6

    .line 75
    .line 76
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/Long;

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v12

    .line 86
    iget-object v4, v3, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 87
    .line 88
    invoke-virtual {v4, v12, v13, v3}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    iget-object v12, v9, Lj$/time/temporal/u;->a:Lj$/time/c;

    .line 93
    .line 94
    invoke-virtual {v12}, Lj$/time/c;->getValue()I

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    sub-int/2addr v4, v12

    .line 99
    invoke-static {v4}, Lj$/time/temporal/q;->e(I)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    add-int/2addr v4, v10

    .line 104
    invoke-static/range {p2 .. p2}, Lj$/com/android/tools/r8/a;->B(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/l;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    sget-object v13, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 109
    .line 110
    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    move-object v15, v7

    .line 115
    move-object/from16 v16, v8

    .line 116
    .line 117
    if-eqz v14, :cond_9

    .line 118
    .line 119
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Ljava/lang/Long;

    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    iget-object v6, v13, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 130
    .line 131
    invoke-virtual {v6, v7, v8, v13}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    sget-object v7, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 136
    .line 137
    if-ne v11, v7, :cond_5

    .line 138
    .line 139
    sget-object v14, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 140
    .line 141
    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v17

    .line 145
    if-eqz v17, :cond_5

    .line 146
    .line 147
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    check-cast v11, Ljava/lang/Long;

    .line 152
    .line 153
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 154
    .line 155
    .line 156
    move-result-wide v8

    .line 157
    int-to-long v10, v5

    .line 158
    sget-object v5, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 159
    .line 160
    if-ne v2, v5, :cond_2

    .line 161
    .line 162
    const/4 v5, 0x1

    .line 163
    invoke-interface {v12, v6, v5, v5}, Lj$/time/chrono/l;->S(III)Lj$/time/chrono/b;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const-wide/16 v5, 0x1

    .line 168
    .line 169
    invoke-static {v8, v9, v5, v6}, Lj$/com/android/tools/r8/a;->U(JJ)J

    .line 170
    .line 171
    .line 172
    move-result-wide v5

    .line 173
    invoke-interface {v2, v5, v6, v7}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0, v2}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    sget-object v6, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 182
    .line 183
    invoke-interface {v2, v6}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    invoke-virtual {v0, v6, v5}, Lj$/time/temporal/t;->h(II)I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    invoke-static {v5, v6}, Lj$/time/temporal/t;->a(II)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    int-to-long v5, v5

    .line 196
    invoke-static {v10, v11, v5, v6}, Lj$/com/android/tools/r8/a;->U(JJ)J

    .line 197
    .line 198
    .line 199
    move-result-wide v5

    .line 200
    invoke-virtual {v0, v2}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    sub-int/2addr v4, v7

    .line 205
    const-wide/16 v7, 0x7

    .line 206
    .line 207
    invoke-static {v5, v6, v7, v8}, Lj$/com/android/tools/r8/a;->T(JJ)J

    .line 208
    .line 209
    .line 210
    move-result-wide v5

    .line 211
    int-to-long v7, v4

    .line 212
    invoke-static {v5, v6, v7, v8}, Lj$/com/android/tools/r8/a;->S(JJ)J

    .line 213
    .line 214
    .line 215
    move-result-wide v4

    .line 216
    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 217
    .line 218
    invoke-interface {v2, v4, v5, v6}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    goto :goto_1

    .line 223
    :cond_2
    iget-object v5, v14, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 224
    .line 225
    invoke-virtual {v5, v8, v9, v14}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    const/4 v7, 0x1

    .line 230
    invoke-interface {v12, v6, v5, v7}, Lj$/time/chrono/l;->S(III)Lj$/time/chrono/b;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    move-object/from16 v7, v16

    .line 235
    .line 236
    invoke-virtual {v7, v10, v11, v0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    int-to-long v6, v6

    .line 241
    invoke-virtual {v0, v5}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    sget-object v11, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 246
    .line 247
    invoke-interface {v5, v11}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    invoke-virtual {v0, v11, v10}, Lj$/time/temporal/t;->h(II)I

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    invoke-static {v10, v11}, Lj$/time/temporal/t;->a(II)I

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    int-to-long v10, v10

    .line 260
    sub-long/2addr v6, v10

    .line 261
    long-to-int v6, v6

    .line 262
    invoke-virtual {v0, v5}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    sub-int/2addr v4, v7

    .line 267
    mul-int/lit8 v6, v6, 0x7

    .line 268
    .line 269
    add-int/2addr v6, v4

    .line 270
    int-to-long v6, v6

    .line 271
    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 272
    .line 273
    invoke-interface {v5, v6, v7, v4}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    sget-object v5, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 278
    .line 279
    if-ne v2, v5, :cond_4

    .line 280
    .line 281
    invoke-interface {v4, v14}, Lj$/time/temporal/TemporalAccessor;->M(Lj$/time/temporal/p;)J

    .line 282
    .line 283
    .line 284
    move-result-wide v5

    .line 285
    cmp-long v2, v5, v8

    .line 286
    .line 287
    if-nez v2, :cond_3

    .line 288
    .line 289
    goto :goto_0

    .line 290
    :cond_3
    const-string v0, "Strict mode rejected resolved date as it is in a different month"

    .line 291
    .line 292
    invoke-static {v0}, Lj$/nio/file/m;->k(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return-object v15

    .line 296
    :cond_4
    :goto_0
    move-object v2, v4

    .line 297
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    invoke-interface {v1, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    return-object v2

    .line 310
    :cond_5
    move-object/from16 v7, v16

    .line 311
    .line 312
    sget-object v8, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 313
    .line 314
    if-ne v11, v8, :cond_e

    .line 315
    .line 316
    int-to-long v8, v5

    .line 317
    const/4 v5, 0x1

    .line 318
    invoke-interface {v12, v6, v5, v5}, Lj$/time/chrono/l;->S(III)Lj$/time/chrono/b;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    sget-object v10, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 323
    .line 324
    if-ne v2, v10, :cond_6

    .line 325
    .line 326
    invoke-virtual {v0, v5}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    sget-object v6, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 331
    .line 332
    invoke-interface {v5, v6}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    invoke-virtual {v0, v6, v2}, Lj$/time/temporal/t;->h(II)I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    invoke-static {v2, v6}, Lj$/time/temporal/t;->a(II)I

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    int-to-long v6, v2

    .line 345
    invoke-static {v8, v9, v6, v7}, Lj$/com/android/tools/r8/a;->U(JJ)J

    .line 346
    .line 347
    .line 348
    move-result-wide v6

    .line 349
    invoke-virtual {v0, v5}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    sub-int/2addr v4, v2

    .line 354
    const-wide/16 v8, 0x7

    .line 355
    .line 356
    invoke-static {v6, v7, v8, v9}, Lj$/com/android/tools/r8/a;->T(JJ)J

    .line 357
    .line 358
    .line 359
    move-result-wide v6

    .line 360
    int-to-long v8, v4

    .line 361
    invoke-static {v6, v7, v8, v9}, Lj$/com/android/tools/r8/a;->S(JJ)J

    .line 362
    .line 363
    .line 364
    move-result-wide v6

    .line 365
    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 366
    .line 367
    invoke-interface {v5, v6, v7, v2}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    goto :goto_3

    .line 372
    :cond_6
    invoke-virtual {v7, v8, v9, v0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    int-to-long v7, v7

    .line 377
    invoke-virtual {v0, v5}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 378
    .line 379
    .line 380
    move-result v9

    .line 381
    sget-object v10, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 382
    .line 383
    invoke-interface {v5, v10}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/p;)I

    .line 384
    .line 385
    .line 386
    move-result v10

    .line 387
    invoke-virtual {v0, v10, v9}, Lj$/time/temporal/t;->h(II)I

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    invoke-static {v9, v10}, Lj$/time/temporal/t;->a(II)I

    .line 392
    .line 393
    .line 394
    move-result v9

    .line 395
    int-to-long v9, v9

    .line 396
    sub-long/2addr v7, v9

    .line 397
    long-to-int v7, v7

    .line 398
    invoke-virtual {v0, v5}, Lj$/time/temporal/t;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    sub-int/2addr v4, v8

    .line 403
    mul-int/lit8 v7, v7, 0x7

    .line 404
    .line 405
    add-int/2addr v7, v4

    .line 406
    int-to-long v7, v7

    .line 407
    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 408
    .line 409
    invoke-interface {v5, v7, v8, v4}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    sget-object v5, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 414
    .line 415
    if-ne v2, v5, :cond_8

    .line 416
    .line 417
    invoke-interface {v4, v13}, Lj$/time/temporal/TemporalAccessor;->M(Lj$/time/temporal/p;)J

    .line 418
    .line 419
    .line 420
    move-result-wide v7

    .line 421
    int-to-long v5, v6

    .line 422
    cmp-long v2, v7, v5

    .line 423
    .line 424
    if-nez v2, :cond_7

    .line 425
    .line 426
    goto :goto_2

    .line 427
    :cond_7
    const-string v0, "Strict mode rejected resolved date as it is in a different year"

    .line 428
    .line 429
    invoke-static {v0}, Lj$/nio/file/m;->k(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    return-object v15

    .line 433
    :cond_8
    :goto_2
    move-object v2, v4

    .line 434
    :goto_3
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    return-object v2

    .line 444
    :cond_9
    sget-object v5, Lj$/time/temporal/u;->h:Lj$/time/temporal/h;

    .line 445
    .line 446
    if-eq v11, v5, :cond_a

    .line 447
    .line 448
    sget-object v5, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 449
    .line 450
    if-ne v11, v5, :cond_e

    .line 451
    .line 452
    :cond_a
    iget-object v5, v9, Lj$/time/temporal/u;->f:Lj$/time/temporal/t;

    .line 453
    .line 454
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    if-eqz v5, :cond_e

    .line 459
    .line 460
    iget-object v5, v9, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 461
    .line 462
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    if-eqz v5, :cond_e

    .line 467
    .line 468
    iget-object v5, v9, Lj$/time/temporal/u;->f:Lj$/time/temporal/t;

    .line 469
    .line 470
    iget-object v7, v5, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    .line 471
    .line 472
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    check-cast v5, Ljava/lang/Long;

    .line 477
    .line 478
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 479
    .line 480
    .line 481
    move-result-wide v10

    .line 482
    iget-object v5, v9, Lj$/time/temporal/u;->f:Lj$/time/temporal/t;

    .line 483
    .line 484
    invoke-virtual {v7, v10, v11, v5}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    sget-object v7, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 489
    .line 490
    if-ne v2, v7, :cond_b

    .line 491
    .line 492
    const/4 v7, 0x1

    .line 493
    invoke-virtual {v0, v12, v5, v7, v4}, Lj$/time/temporal/t;->e(Lj$/time/chrono/l;III)Lj$/time/chrono/b;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    iget-object v4, v9, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 498
    .line 499
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    check-cast v4, Ljava/lang/Long;

    .line 504
    .line 505
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 506
    .line 507
    .line 508
    move-result-wide v4

    .line 509
    const-wide/16 v7, 0x1

    .line 510
    .line 511
    invoke-static {v4, v5, v7, v8}, Lj$/com/android/tools/r8/a;->U(JJ)J

    .line 512
    .line 513
    .line 514
    move-result-wide v4

    .line 515
    invoke-interface {v2, v4, v5, v6}, Lj$/time/chrono/b;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    goto :goto_5

    .line 520
    :cond_b
    iget-object v6, v9, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 521
    .line 522
    iget-object v7, v6, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    .line 523
    .line 524
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    check-cast v6, Ljava/lang/Long;

    .line 529
    .line 530
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 531
    .line 532
    .line 533
    move-result-wide v10

    .line 534
    iget-object v6, v9, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 535
    .line 536
    invoke-virtual {v7, v10, v11, v6}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    invoke-virtual {v0, v12, v5, v6, v4}, Lj$/time/temporal/t;->e(Lj$/time/chrono/l;III)Lj$/time/chrono/b;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    sget-object v6, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 545
    .line 546
    if-ne v2, v6, :cond_d

    .line 547
    .line 548
    invoke-virtual {v0, v4}, Lj$/time/temporal/t;->c(Lj$/time/temporal/TemporalAccessor;)I

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    if-ne v2, v5, :cond_c

    .line 553
    .line 554
    goto :goto_4

    .line 555
    :cond_c
    const-string v0, "Strict mode rejected resolved date as it is in a different week-based-year"

    .line 556
    .line 557
    invoke-static {v0}, Lj$/nio/file/m;->k(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    return-object v15

    .line 561
    :cond_d
    :goto_4
    move-object v2, v4

    .line 562
    :goto_5
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    iget-object v0, v9, Lj$/time/temporal/u;->f:Lj$/time/temporal/t;

    .line 566
    .line 567
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    iget-object v0, v9, Lj$/time/temporal/u;->e:Lj$/time/temporal/t;

    .line 571
    .line 572
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    return-object v2

    .line 579
    :cond_e
    :goto_6
    return-object v15
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/time/temporal/t;->b:Lj$/time/temporal/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/time/temporal/u;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lj$/time/temporal/t;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, "["

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, "]"

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final u()Lj$/time/temporal/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/temporal/t;->e:Lj$/time/temporal/s;

    .line 2
    .line 3
    return-object p0
.end method
