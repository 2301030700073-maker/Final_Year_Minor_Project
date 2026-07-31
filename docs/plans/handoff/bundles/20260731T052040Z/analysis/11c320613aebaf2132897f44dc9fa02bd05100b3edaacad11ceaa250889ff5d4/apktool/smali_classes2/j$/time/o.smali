.class public final Lj$/time/o;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/time/temporal/l;
.implements Lj$/time/temporal/m;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic c:I = 0x0

.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field public final a:Lj$/time/i;

.field public final b:Lj$/time/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lj$/time/i;->e:Lj$/time/i;

    .line 2
    .line 3
    sget-object v1, Lj$/time/ZoneOffset;->g:Lj$/time/ZoneOffset;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lj$/time/o;

    .line 9
    .line 10
    invoke-direct {v2, v0, v1}, Lj$/time/o;-><init>(Lj$/time/i;Lj$/time/ZoneOffset;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lj$/time/i;->f:Lj$/time/i;

    .line 14
    .line 15
    sget-object v1, Lj$/time/ZoneOffset;->f:Lj$/time/ZoneOffset;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Lj$/time/o;

    .line 21
    .line 22
    invoke-direct {v2, v0, v1}, Lj$/time/o;-><init>(Lj$/time/i;Lj$/time/ZoneOffset;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lj$/time/i;Lj$/time/ZoneOffset;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "time"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lj$/time/i;

    .line 11
    .line 12
    iput-object p1, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 13
    .line 14
    const-string p1, "offset"

    .line 15
    .line 16
    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lj$/time/ZoneOffset;

    .line 21
    .line 22
    iput-object p1, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 23
    .line 24
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/io/InvalidObjectException;

    .line 2
    .line 3
    const-string p1, "Deserialization via serialization delegate"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lj$/time/q;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lj$/time/q;-><init>(BLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final F(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lj$/time/temporal/q;->d:Lj$/desugar/sun/nio/fs/m;

    .line 2
    .line 3
    if-eq p1, v0, :cond_7

    .line 4
    .line 5
    sget-object v0, Lj$/time/temporal/q;->e:Lj$/desugar/sun/nio/fs/m;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    sget-object v0, Lj$/time/temporal/q;->a:Lj$/desugar/sun/nio/fs/m;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v1

    .line 19
    :goto_0
    sget-object v3, Lj$/time/temporal/q;->b:Lj$/desugar/sun/nio/fs/m;

    .line 20
    .line 21
    if-ne p1, v3, :cond_2

    .line 22
    .line 23
    move v1, v2

    .line 24
    :cond_2
    or-int/2addr v0, v1

    .line 25
    if-nez v0, :cond_6

    .line 26
    .line 27
    sget-object v0, Lj$/time/temporal/q;->f:Lj$/desugar/sun/nio/fs/m;

    .line 28
    .line 29
    if-ne p1, v0, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    sget-object v0, Lj$/time/temporal/q;->g:Lj$/desugar/sun/nio/fs/m;

    .line 33
    .line 34
    if-ne p1, v0, :cond_4

    .line 35
    .line 36
    iget-object p0, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_4
    sget-object v0, Lj$/time/temporal/q;->c:Lj$/desugar/sun/nio/fs/m;

    .line 40
    .line 41
    if-ne p1, v0, :cond_5

    .line 42
    .line 43
    sget-object p0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_5
    invoke-virtual {p1, p0}, Lj$/desugar/sun/nio/fs/m;->g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :cond_7
    :goto_2
    iget-object p0, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 54
    .line 55
    return-object p0
.end method

.method public final H(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/l;
    .locals 2

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide p1, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/o;->Z(JLj$/time/temporal/TemporalUnit;)Lj$/time/o;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-wide/16 p1, 0x1

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/o;->Z(JLj$/time/temporal/TemporalUnit;)Lj$/time/o;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    neg-long p1, p1

    .line 24
    goto :goto_0
.end method

.method public final M(Lj$/time/temporal/p;)J
    .locals 1

    .line 1
    instance-of v0, p1, Lj$/time/temporal/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 10
    .line 11
    iget p0, p0, Lj$/time/ZoneOffset;->b:I

    .line 12
    .line 13
    int-to-long p0, p0

    .line 14
    return-wide p0

    .line 15
    :cond_0
    iget-object p0, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lj$/time/i;->M(Lj$/time/temporal/p;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    return-wide p0

    .line 22
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->F(Lj$/time/temporal/TemporalAccessor;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0
.end method

.method public final Z(JLj$/time/temporal/TemporalUnit;)Lj$/time/o;
    .locals 1

    .line 1
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lj$/time/i;->f0(JLj$/time/temporal/TemporalUnit;)Lj$/time/i;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lj$/time/o;->a0(Lj$/time/i;Lj$/time/ZoneOffset;)Lj$/time/o;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lj$/time/o;

    .line 23
    .line 24
    return-object p0
.end method

.method public final a0(Lj$/time/i;Lj$/time/ZoneOffset;)Lj$/time/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lj$/time/o;

    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lj$/time/o;-><init>(Lj$/time/i;Lj$/time/ZoneOffset;)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public final c(JLj$/time/temporal/p;)Lj$/time/temporal/l;
    .locals 2

    .line 1
    instance-of v0, p3, Lj$/time/temporal/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 6
    .line 7
    iget-object v1, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 8
    .line 9
    if-ne p3, v0, :cond_0

    .line 10
    .line 11
    check-cast p3, Lj$/time/temporal/a;

    .line 12
    .line 13
    iget-object v0, p3, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Lj$/time/ZoneOffset;->i0(I)Lj$/time/ZoneOffset;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, v1, p1}, Lj$/time/o;->a0(Lj$/time/i;Lj$/time/ZoneOffset;)Lj$/time/o;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lj$/time/i;->n0(JLj$/time/temporal/p;)Lj$/time/i;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lj$/time/o;->a0(Lj$/time/i;Lj$/time/ZoneOffset;)Lj$/time/o;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/p;->H(Lj$/time/temporal/l;J)Lj$/time/temporal/l;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lj$/time/o;

    .line 44
    .line 45
    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 8

    .line 1
    check-cast p1, Lj$/time/o;

    .line 2
    .line 3
    iget-object v0, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 4
    .line 5
    iget-object v1, p1, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p1, Lj$/time/o;->a:Lj$/time/i;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Lj$/time/i;->Z(Lj$/time/i;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {v1}, Lj$/time/i;->l0()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-object v2, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 27
    .line 28
    iget v2, v2, Lj$/time/ZoneOffset;->b:I

    .line 29
    .line 30
    int-to-long v2, v2

    .line 31
    const-wide/32 v4, 0x3b9aca00

    .line 32
    .line 33
    .line 34
    mul-long/2addr v2, v4

    .line 35
    sub-long/2addr v0, v2

    .line 36
    iget-object v2, p1, Lj$/time/o;->a:Lj$/time/i;

    .line 37
    .line 38
    invoke-virtual {v2}, Lj$/time/i;->l0()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iget-object v6, p1, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 43
    .line 44
    iget v6, v6, Lj$/time/ZoneOffset;->b:I

    .line 45
    .line 46
    int-to-long v6, v6

    .line 47
    mul-long/2addr v6, v4

    .line 48
    sub-long/2addr v2, v6

    .line 49
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    iget-object p0, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 56
    .line 57
    iget-object p1, p1, Lj$/time/o;->a:Lj$/time/i;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lj$/time/i;->Z(Lj$/time/i;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :cond_1
    return v0
.end method

.method public final bridge synthetic d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/o;->Z(JLj$/time/temporal/TemporalUnit;)Lj$/time/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final e(Lj$/time/temporal/p;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lj$/time/temporal/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Lj$/time/temporal/a;

    .line 7
    .line 8
    invoke-virtual {p0}, Lj$/time/temporal/a;->Z()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    sget-object p0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 15
    .line 16
    if-ne p1, p0, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->k(Lj$/time/temporal/TemporalAccessor;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lj$/time/o;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lj$/time/o;

    .line 11
    .line 12
    iget-object v1, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 13
    .line 14
    iget-object v3, p1, Lj$/time/o;->a:Lj$/time/i;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Lj$/time/i;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 23
    .line 24
    iget-object p1, p1, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/time/i;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 8
    .line 9
    iget p0, p0, Lj$/time/ZoneOffset;->b:I

    .line 10
    .line 11
    xor-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public final k(Lj$/time/temporal/p;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/time/temporal/q;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final n(Lj$/time/LocalDate;)Lj$/time/temporal/l;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lj$/com/android/tools/r8/a;->a(Lj$/time/chrono/b;Lj$/time/temporal/l;)Lj$/time/temporal/l;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lj$/time/o;

    .line 6
    .line 7
    return-object p0
.end method

.method public final o(Lj$/time/temporal/p;)Lj$/time/temporal/s;
    .locals 1

    .line 1
    instance-of v0, p1, Lj$/time/temporal/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lj$/time/temporal/a;

    .line 10
    .line 11
    iget-object p0, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lj$/time/temporal/q;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Lj$/time/temporal/s;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->n(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/s;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/time/i;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 8
    .line 9
    iget-object p0, p0, Lj$/time/ZoneOffset;->c:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final u(Lj$/time/temporal/l;)Lj$/time/temporal/l;
    .locals 3

    .line 1
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    .line 2
    .line 3
    iget-object v1, p0, Lj$/time/o;->a:Lj$/time/i;

    .line 4
    .line 5
    invoke-virtual {v1}, Lj$/time/i;->l0()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/l;->c(JLj$/time/temporal/p;)Lj$/time/temporal/l;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 14
    .line 15
    iget-object p0, p0, Lj$/time/o;->b:Lj$/time/ZoneOffset;

    .line 16
    .line 17
    iget p0, p0, Lj$/time/ZoneOffset;->b:I

    .line 18
    .line 19
    int-to-long v1, p0

    .line 20
    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/l;->c(JLj$/time/temporal/p;)Lj$/time/temporal/l;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
