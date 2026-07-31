.class public final Lj$/time/temporal/r;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/time/temporal/n;


# static fields
.field public static final f:Lj$/time/temporal/q;

.field public static final g:Lj$/time/temporal/q;

.field public static final h:Lj$/time/temporal/q;

.field public static final i:Lj$/time/temporal/q;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj$/time/temporal/s;

.field public final c:Lj$/time/temporal/TemporalUnit;

.field public final d:Lj$/time/temporal/TemporalUnit;

.field public final e:Lj$/time/temporal/q;


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
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/q;->f(JJ)Lj$/time/temporal/q;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lj$/time/temporal/r;->f:Lj$/time/temporal/q;

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
    invoke-static/range {v1 .. v6}, Lj$/time/temporal/q;->g(JJJ)Lj$/time/temporal/q;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lj$/time/temporal/r;->g:Lj$/time/temporal/q;

    .line 22
    .line 23
    const-wide/16 v3, 0x34

    .line 24
    .line 25
    const-wide/16 v5, 0x36

    .line 26
    .line 27
    invoke-static/range {v1 .. v6}, Lj$/time/temporal/q;->g(JJJ)Lj$/time/temporal/q;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lj$/time/temporal/r;->h:Lj$/time/temporal/q;

    .line 32
    .line 33
    const-wide/16 v5, 0x35

    .line 34
    .line 35
    const-wide/16 v1, 0x1

    .line 36
    .line 37
    invoke-static/range {v1 .. v6}, Lj$/time/temporal/q;->g(JJJ)Lj$/time/temporal/q;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lj$/time/temporal/r;->i:Lj$/time/temporal/q;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lj$/time/temporal/s;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/time/temporal/r;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lj$/time/temporal/r;->b:Lj$/time/temporal/s;

    .line 7
    .line 8
    iput-object p3, p0, Lj$/time/temporal/r;->c:Lj$/time/temporal/TemporalUnit;

    .line 9
    .line 10
    iput-object p4, p0, Lj$/time/temporal/r;->d:Lj$/time/temporal/TemporalUnit;

    .line 11
    .line 12
    iput-object p5, p0, Lj$/time/temporal/r;->e:Lj$/time/temporal/q;

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
.method public final b(Lj$/time/temporal/TemporalAccessor;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/time/temporal/r;->b:Lj$/time/temporal/s;

    .line 2
    .line 3
    iget-object p0, p0, Lj$/time/temporal/s;->a:Lj$/time/DayOfWeek;

    .line 4
    .line 5
    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr p1, p0

    .line 16
    invoke-static {p1}, Lj$/time/temporal/o;->e(I)I

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
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 6
    .line 7
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0, v3, v0}, Lj$/time/temporal/r;->m(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0, v3}, Lj$/time/temporal/r;->a(II)I

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
    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/n;)Lj$/time/temporal/q;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-wide v4, p1, Lj$/time/temporal/q;->d:J

    .line 35
    .line 36
    long-to-int p1, v4

    .line 37
    iget-object p0, p0, Lj$/time/temporal/r;->b:Lj$/time/temporal/s;

    .line 38
    .line 39
    iget p0, p0, Lj$/time/temporal/s;->b:I

    .line 40
    .line 41
    add-int/2addr p1, p0

    .line 42
    invoke-static {v0, p1}, Lj$/time/temporal/r;->a(II)I

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
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 6
    .line 7
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0, v2, v0}, Lj$/time/temporal/r;->m(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0, v2}, Lj$/time/temporal/r;->a(II)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lj$/time/a;->N(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lj$/time/chrono/a;->h(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

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
    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/ChronoLocalDate;->l(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->d(Lj$/time/temporal/TemporalAccessor;)I

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
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/n;)Lj$/time/temporal/q;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-wide v1, p1, Lj$/time/temporal/q;->d:J

    .line 50
    .line 51
    long-to-int p1, v1

    .line 52
    iget-object p0, p0, Lj$/time/temporal/r;->b:Lj$/time/temporal/s;

    .line 53
    .line 54
    iget p0, p0, Lj$/time/temporal/s;->b:I

    .line 55
    .line 56
    add-int/2addr p1, p0

    .line 57
    invoke-static {v0, p1}, Lj$/time/temporal/r;->a(II)I

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

.method public final e(Lj$/time/chrono/a;III)Lj$/time/chrono/ChronoLocalDate;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, p2, v0, v0}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, v0, p2}, Lj$/time/temporal/r;->m(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->lengthOfYear()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object p0, p0, Lj$/time/temporal/r;->b:Lj$/time/temporal/s;

    .line 19
    .line 20
    iget p0, p0, Lj$/time/temporal/s;->b:I

    .line 21
    .line 22
    add-int/2addr v1, p0

    .line 23
    invoke-static {p2, v1}, Lj$/time/temporal/r;->a(II)I

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
    invoke-interface {p1, p2, p3, p0}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final f(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 1

    .line 1
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->c(Lj$/time/temporal/n;)Z

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
    iget-object p0, p0, Lj$/time/temporal/r;->d:Lj$/time/temporal/TemporalUnit;

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
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->c(Lj$/time/temporal/n;)Z

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
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->c(Lj$/time/temporal/n;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_2
    sget-object v0, Lj$/time/temporal/s;->h:Lj$/time/temporal/h;

    .line 40
    .line 41
    if-ne p0, v0, :cond_3

    .line 42
    .line 43
    sget-object p0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 44
    .line 45
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->c(Lj$/time/temporal/n;)Z

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
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->c(Lj$/time/temporal/n;)Z

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

.method public final g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/q;
    .locals 3

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/time/temporal/r;->d:Lj$/time/temporal/TemporalUnit;

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lj$/time/temporal/r;->e:Lj$/time/temporal/q;

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
    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/r;->j(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/q;

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
    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/r;->j(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/q;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_2
    sget-object v0, Lj$/time/temporal/s;->h:Lj$/time/temporal/h;

    .line 33
    .line 34
    if-ne v1, v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/q;

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
    iget-object p0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

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

.method public final h(Ljava/util/Map;Lj$/time/format/d0;Lj$/time/format/e0;)Lj$/time/temporal/TemporalAccessor;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-static {v3, v4}, Lj$/time/a;->O(J)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    sget-object v6, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    iget-object v8, v0, Lj$/time/temporal/r;->e:Lj$/time/temporal/q;

    .line 27
    .line 28
    iget-object v9, v0, Lj$/time/temporal/r;->b:Lj$/time/temporal/s;

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    iget-object v11, v0, Lj$/time/temporal/r;->d:Lj$/time/temporal/TemporalUnit;

    .line 32
    .line 33
    if-ne v11, v6, :cond_0

    .line 34
    .line 35
    invoke-virtual {v8, v3, v4, v0}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v3, v9, Lj$/time/temporal/s;->a:Lj$/time/DayOfWeek;

    .line 40
    .line 41
    invoke-virtual {v3}, Lj$/time/DayOfWeek;->getValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sub-int/2addr v3, v10

    .line 46
    sub-int/2addr v1, v10

    .line 47
    add-int/2addr v1, v3

    .line 48
    invoke-static {v1}, Lj$/time/temporal/o;->e(I)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v1, v10

    .line 53
    int-to-long v3, v1

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 58
    .line 59
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-object v7

    .line 67
    :cond_0
    sget-object v3, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    move-object/from16 p1, v7

    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/Long;

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v12

    .line 89
    iget-object v4, v3, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    .line 90
    .line 91
    invoke-virtual {v4, v12, v13, v3}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    iget-object v12, v9, Lj$/time/temporal/s;->a:Lj$/time/DayOfWeek;

    .line 96
    .line 97
    invoke-virtual {v12}, Lj$/time/DayOfWeek;->getValue()I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    sub-int/2addr v4, v12

    .line 102
    invoke-static {v4}, Lj$/time/temporal/o;->e(I)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    add-int/2addr v4, v10

    .line 107
    invoke-static/range {p2 .. p2}, Lj$/time/a;->N(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/a;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    sget-object v13, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 112
    .line 113
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    move-object/from16 p1, v7

    .line 118
    .line 119
    move-object v15, v8

    .line 120
    if-eqz v14, :cond_9

    .line 121
    .line 122
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Ljava/lang/Long;

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    iget-object v6, v13, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    .line 133
    .line 134
    invoke-virtual {v6, v7, v8, v13}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    sget-object v7, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 139
    .line 140
    if-ne v11, v7, :cond_5

    .line 141
    .line 142
    sget-object v14, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 143
    .line 144
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v16

    .line 148
    if-eqz v16, :cond_5

    .line 149
    .line 150
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    check-cast v11, Ljava/lang/Long;

    .line 155
    .line 156
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 157
    .line 158
    .line 159
    move-result-wide v8

    .line 160
    int-to-long v10, v5

    .line 161
    sget-object v5, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 162
    .line 163
    if-ne v1, v5, :cond_2

    .line 164
    .line 165
    const/4 v5, 0x1

    .line 166
    invoke-virtual {v12, v6, v5, v5}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-wide/16 v5, 0x1

    .line 171
    .line 172
    invoke-static {v8, v9, v5, v6}, Lj$/time/a;->V(JJ)J

    .line 173
    .line 174
    .line 175
    move-result-wide v5

    .line 176
    invoke-interface {v1, v5, v6, v7}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    sget-object v6, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 185
    .line 186
    invoke-interface {v1, v6}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    invoke-virtual {v0, v6, v5}, Lj$/time/temporal/r;->m(II)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    invoke-static {v5, v6}, Lj$/time/temporal/r;->a(II)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    int-to-long v5, v5

    .line 199
    invoke-static {v10, v11, v5, v6}, Lj$/time/a;->V(JJ)J

    .line 200
    .line 201
    .line 202
    move-result-wide v5

    .line 203
    invoke-virtual {v0, v1}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    sub-int/2addr v4, v7

    .line 208
    const-wide/16 v7, 0x7

    .line 209
    .line 210
    invoke-static {v5, v6, v7, v8}, Lj$/time/a;->U(JJ)J

    .line 211
    .line 212
    .line 213
    move-result-wide v5

    .line 214
    int-to-long v7, v4

    .line 215
    invoke-static {v5, v6, v7, v8}, Lj$/time/a;->P(JJ)J

    .line 216
    .line 217
    .line 218
    move-result-wide v4

    .line 219
    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 220
    .line 221
    invoke-interface {v1, v4, v5, v6}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    goto :goto_1

    .line 226
    :cond_2
    iget-object v5, v14, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    .line 227
    .line 228
    invoke-virtual {v5, v8, v9, v14}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    const/4 v7, 0x1

    .line 233
    invoke-virtual {v12, v6, v5, v7}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v15, v10, v11, v0}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    int-to-long v6, v6

    .line 242
    invoke-virtual {v0, v5}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    sget-object v11, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 247
    .line 248
    invoke-interface {v5, v11}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    invoke-virtual {v0, v11, v10}, Lj$/time/temporal/r;->m(II)I

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    invoke-static {v10, v11}, Lj$/time/temporal/r;->a(II)I

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    int-to-long v10, v10

    .line 261
    sub-long/2addr v6, v10

    .line 262
    long-to-int v6, v6

    .line 263
    invoke-virtual {v0, v5}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    sub-int/2addr v4, v7

    .line 268
    mul-int/lit8 v6, v6, 0x7

    .line 269
    .line 270
    add-int/2addr v6, v4

    .line 271
    int-to-long v6, v6

    .line 272
    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 273
    .line 274
    invoke-interface {v5, v6, v7, v4}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    sget-object v5, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 279
    .line 280
    if-ne v1, v5, :cond_4

    .line 281
    .line 282
    invoke-interface {v4, v14}, Lj$/time/temporal/TemporalAccessor;->q(Lj$/time/temporal/n;)J

    .line 283
    .line 284
    .line 285
    move-result-wide v5

    .line 286
    cmp-long v1, v5, v8

    .line 287
    .line 288
    if-nez v1, :cond_3

    .line 289
    .line 290
    goto :goto_0

    .line 291
    :cond_3
    const-string v0, "Strict mode rejected resolved date as it is in a different month"

    .line 292
    .line 293
    invoke-static {v0}, Lj$/time/h;->k(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return-object p1

    .line 297
    :cond_4
    :goto_0
    move-object v1, v4

    .line 298
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    return-object v1

    .line 311
    :cond_5
    sget-object v7, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 312
    .line 313
    if-ne v11, v7, :cond_e

    .line 314
    .line 315
    int-to-long v7, v5

    .line 316
    const/4 v5, 0x1

    .line 317
    invoke-virtual {v12, v6, v5, v5}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    sget-object v9, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 322
    .line 323
    if-ne v1, v9, :cond_6

    .line 324
    .line 325
    invoke-virtual {v0, v5}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    sget-object v6, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 330
    .line 331
    invoke-interface {v5, v6}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    invoke-virtual {v0, v6, v1}, Lj$/time/temporal/r;->m(II)I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    invoke-static {v1, v6}, Lj$/time/temporal/r;->a(II)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    int-to-long v9, v1

    .line 344
    invoke-static {v7, v8, v9, v10}, Lj$/time/a;->V(JJ)J

    .line 345
    .line 346
    .line 347
    move-result-wide v6

    .line 348
    invoke-virtual {v0, v5}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    sub-int/2addr v4, v1

    .line 353
    const-wide/16 v8, 0x7

    .line 354
    .line 355
    invoke-static {v6, v7, v8, v9}, Lj$/time/a;->U(JJ)J

    .line 356
    .line 357
    .line 358
    move-result-wide v6

    .line 359
    int-to-long v8, v4

    .line 360
    invoke-static {v6, v7, v8, v9}, Lj$/time/a;->P(JJ)J

    .line 361
    .line 362
    .line 363
    move-result-wide v6

    .line 364
    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 365
    .line 366
    invoke-interface {v5, v6, v7, v1}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    goto :goto_3

    .line 371
    :cond_6
    invoke-virtual {v15, v7, v8, v0}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 372
    .line 373
    .line 374
    move-result v7

    .line 375
    int-to-long v7, v7

    .line 376
    invoke-virtual {v0, v5}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 377
    .line 378
    .line 379
    move-result v9

    .line 380
    sget-object v10, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 381
    .line 382
    invoke-interface {v5, v10}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 383
    .line 384
    .line 385
    move-result v10

    .line 386
    invoke-virtual {v0, v10, v9}, Lj$/time/temporal/r;->m(II)I

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    invoke-static {v9, v10}, Lj$/time/temporal/r;->a(II)I

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    int-to-long v9, v9

    .line 395
    sub-long/2addr v7, v9

    .line 396
    long-to-int v7, v7

    .line 397
    invoke-virtual {v0, v5}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    sub-int/2addr v4, v8

    .line 402
    mul-int/lit8 v7, v7, 0x7

    .line 403
    .line 404
    add-int/2addr v7, v4

    .line 405
    int-to-long v7, v7

    .line 406
    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 407
    .line 408
    invoke-interface {v5, v7, v8, v4}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    sget-object v5, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 413
    .line 414
    if-ne v1, v5, :cond_8

    .line 415
    .line 416
    invoke-interface {v4, v13}, Lj$/time/temporal/TemporalAccessor;->q(Lj$/time/temporal/n;)J

    .line 417
    .line 418
    .line 419
    move-result-wide v7

    .line 420
    int-to-long v5, v6

    .line 421
    cmp-long v1, v7, v5

    .line 422
    .line 423
    if-nez v1, :cond_7

    .line 424
    .line 425
    goto :goto_2

    .line 426
    :cond_7
    const-string v0, "Strict mode rejected resolved date as it is in a different year"

    .line 427
    .line 428
    invoke-static {v0}, Lj$/time/h;->k(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    return-object p1

    .line 432
    :cond_8
    :goto_2
    move-object v1, v4

    .line 433
    :goto_3
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    return-object v1

    .line 443
    :cond_9
    sget-object v5, Lj$/time/temporal/s;->h:Lj$/time/temporal/h;

    .line 444
    .line 445
    if-eq v11, v5, :cond_a

    .line 446
    .line 447
    sget-object v5, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 448
    .line 449
    if-ne v11, v5, :cond_e

    .line 450
    .line 451
    :cond_a
    iget-object v5, v9, Lj$/time/temporal/s;->f:Lj$/time/temporal/r;

    .line 452
    .line 453
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    if-eqz v5, :cond_e

    .line 458
    .line 459
    iget-object v5, v9, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    .line 460
    .line 461
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    if-eqz v5, :cond_e

    .line 466
    .line 467
    iget-object v5, v9, Lj$/time/temporal/s;->f:Lj$/time/temporal/r;

    .line 468
    .line 469
    iget-object v7, v5, Lj$/time/temporal/r;->e:Lj$/time/temporal/q;

    .line 470
    .line 471
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    check-cast v5, Ljava/lang/Long;

    .line 476
    .line 477
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 478
    .line 479
    .line 480
    move-result-wide v10

    .line 481
    iget-object v5, v9, Lj$/time/temporal/s;->f:Lj$/time/temporal/r;

    .line 482
    .line 483
    invoke-virtual {v7, v10, v11, v5}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 484
    .line 485
    .line 486
    move-result v5

    .line 487
    sget-object v7, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 488
    .line 489
    if-ne v1, v7, :cond_b

    .line 490
    .line 491
    const/4 v7, 0x1

    .line 492
    invoke-virtual {v0, v12, v5, v7, v4}, Lj$/time/temporal/r;->e(Lj$/time/chrono/a;III)Lj$/time/chrono/ChronoLocalDate;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    iget-object v4, v9, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    .line 497
    .line 498
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    check-cast v4, Ljava/lang/Long;

    .line 503
    .line 504
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 505
    .line 506
    .line 507
    move-result-wide v4

    .line 508
    const-wide/16 v7, 0x1

    .line 509
    .line 510
    invoke-static {v4, v5, v7, v8}, Lj$/time/a;->V(JJ)J

    .line 511
    .line 512
    .line 513
    move-result-wide v4

    .line 514
    invoke-interface {v1, v4, v5, v6}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    goto :goto_5

    .line 519
    :cond_b
    iget-object v6, v9, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    .line 520
    .line 521
    iget-object v7, v6, Lj$/time/temporal/r;->e:Lj$/time/temporal/q;

    .line 522
    .line 523
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    check-cast v6, Ljava/lang/Long;

    .line 528
    .line 529
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 530
    .line 531
    .line 532
    move-result-wide v10

    .line 533
    iget-object v6, v9, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    .line 534
    .line 535
    invoke-virtual {v7, v10, v11, v6}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 536
    .line 537
    .line 538
    move-result v6

    .line 539
    invoke-virtual {v0, v12, v5, v6, v4}, Lj$/time/temporal/r;->e(Lj$/time/chrono/a;III)Lj$/time/chrono/ChronoLocalDate;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    sget-object v6, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 544
    .line 545
    if-ne v1, v6, :cond_d

    .line 546
    .line 547
    invoke-virtual {v0, v4}, Lj$/time/temporal/r;->c(Lj$/time/temporal/TemporalAccessor;)I

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-ne v1, v5, :cond_c

    .line 552
    .line 553
    goto :goto_4

    .line 554
    :cond_c
    const-string v0, "Strict mode rejected resolved date as it is in a different week-based-year"

    .line 555
    .line 556
    invoke-static {v0}, Lj$/time/h;->k(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    return-object p1

    .line 560
    :cond_d
    :goto_4
    move-object v1, v4

    .line 561
    :goto_5
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    iget-object v0, v9, Lj$/time/temporal/s;->f:Lj$/time/temporal/r;

    .line 565
    .line 566
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    iget-object v0, v9, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    .line 570
    .line 571
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    return-object v1

    .line 578
    :cond_e
    :goto_6
    return-object p1
.end method

.method public final i(Lj$/time/temporal/TemporalAccessor;)J
    .locals 3

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/time/temporal/r;->d:Lj$/time/temporal/TemporalUnit;

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

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
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/r;->m(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0, p1}, Lj$/time/temporal/r;->a(II)I

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
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 45
    .line 46
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, p1, v0}, Lj$/time/temporal/r;->m(II)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-static {p0, p1}, Lj$/time/temporal/r;->a(II)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lj$/time/temporal/s;->h:Lj$/time/temporal/h;

    .line 60
    .line 61
    if-ne v1, v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->d(Lj$/time/temporal/TemporalAccessor;)I

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
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->c(Lj$/time/temporal/TemporalAccessor;)I

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

.method public final isDateBased()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final j(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/q;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1, v0}, Lj$/time/temporal/r;->m(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/n;)Lj$/time/temporal/q;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-wide v0, p1, Lj$/time/temporal/q;->a:J

    .line 18
    .line 19
    long-to-int p2, v0

    .line 20
    invoke-static {p0, p2}, Lj$/time/temporal/r;->a(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    int-to-long v0, p2

    .line 25
    iget-wide p1, p1, Lj$/time/temporal/q;->d:J

    .line 26
    .line 27
    long-to-int p1, p1

    .line 28
    invoke-static {p0, p1}, Lj$/time/temporal/r;->a(II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    int-to-long p0, p0

    .line 33
    invoke-static {v0, v1, p0, p1}, Lj$/time/temporal/q;->f(JJ)Lj$/time/temporal/q;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final k(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 4

    .line 1
    iget-object v0, p0, Lj$/time/temporal/r;->e:Lj$/time/temporal/q;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

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
    iget-object v2, p0, Lj$/time/temporal/r;->d:Lj$/time/temporal/TemporalUnit;

    .line 15
    .line 16
    sget-object v3, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lj$/time/temporal/r;->b:Lj$/time/temporal/s;

    .line 21
    .line 22
    iget-object v1, v0, Lj$/time/temporal/s;->c:Lj$/time/temporal/r;

    .line 23
    .line 24
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v0, v0, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {p1}, Lj$/time/a;->N(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    long-to-int p2, p2

    .line 39
    invoke-virtual {p0, p1, p2, v0, v1}, Lj$/time/temporal/r;->e(Lj$/time/chrono/a;III)Lj$/time/chrono/ChronoLocalDate;

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
    iget-object p0, p0, Lj$/time/temporal/r;->c:Lj$/time/temporal/TemporalUnit;

    .line 47
    .line 48
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/Temporal;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/q;
    .locals 6

    .line 1
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->c(Lj$/time/temporal/n;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lj$/time/temporal/r;->h:Lj$/time/temporal/q;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->b(Lj$/time/temporal/TemporalAccessor;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0, v2, v1}, Lj$/time/temporal/r;->m(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1, v2}, Lj$/time/temporal/r;->a(II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Lj$/time/a;->N(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lj$/time/chrono/a;->h(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

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
    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/ChronoLocalDate;->l(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/q;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/n;)Lj$/time/temporal/q;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-wide v4, v0, Lj$/time/temporal/q;->d:J

    .line 57
    .line 58
    long-to-int v0, v4

    .line 59
    iget-object v4, p0, Lj$/time/temporal/r;->b:Lj$/time/temporal/s;

    .line 60
    .line 61
    iget v4, v4, Lj$/time/temporal/s;->b:I

    .line 62
    .line 63
    add-int/2addr v4, v0

    .line 64
    invoke-static {v1, v4}, Lj$/time/temporal/r;->a(II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-lt v3, v1, :cond_2

    .line 69
    .line 70
    invoke-static {p1}, Lj$/time/a;->N(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/a;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, p1}, Lj$/time/chrono/a;->h(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

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
    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lj$/time/temporal/r;->l(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/q;

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
    invoke-static {v0, v1, p0, p1}, Lj$/time/temporal/q;->f(JJ)Lj$/time/temporal/q;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public final m(II)I
    .locals 1

    .line 1
    sub-int/2addr p1, p2

    .line 2
    invoke-static {p1}, Lj$/time/temporal/o;->e(I)I

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
    iget-object p0, p0, Lj$/time/temporal/r;->b:Lj$/time/temporal/s;

    .line 10
    .line 11
    iget p0, p0, Lj$/time/temporal/s;->b:I

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

.method public final range()Lj$/time/temporal/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/temporal/r;->e:Lj$/time/temporal/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/time/temporal/r;->b:Lj$/time/temporal/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/time/temporal/s;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    iget-object p0, p0, Lj$/time/temporal/r;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "["

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, "]"

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
