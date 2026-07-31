.class public final Lj$/time/chrono/t;
.super Lj$/time/chrono/a;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lj$/time/chrono/t;

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/time/chrono/t;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/time/chrono/t;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
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


# virtual methods
.method public final A(I)Lj$/time/chrono/k;
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/time/chrono/w;->j(I)Lj$/time/chrono/w;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final C(Lj$/time/chrono/k;I)I
    .locals 2

    .line 1
    instance-of p0, p1, Lj$/time/chrono/w;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Lj$/time/chrono/w;

    .line 7
    .line 8
    iget-object v0, p0, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 9
    .line 10
    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, p2

    .line 15
    const/4 v1, 0x1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    if-ne p2, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p2, -0x3b9ac9ff

    .line 21
    .line 22
    .line 23
    if-lt v0, p2, :cond_1

    .line 24
    .line 25
    const p2, 0x3b9ac9ff

    .line 26
    .line 27
    .line 28
    if-gt v0, p2, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 31
    .line 32
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-lt v0, p0, :cond_1

    .line 37
    .line 38
    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lj$/time/chrono/w;->h(Lj$/time/LocalDate;)Lj$/time/chrono/w;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-ne p1, p0, :cond_1

    .line 47
    .line 48
    :goto_0
    return v0

    .line 49
    :cond_1
    const-string p0, "Invalid yearOfEra value"

    .line 50
    .line 51
    invoke-static {p0}, Lj$/nio/file/j;->k(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    .line 57
    .line 58
    const-string p1, "Era must be JapaneseEra"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final H(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 1
    instance-of p0, p1, Lj$/time/chrono/v;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lj$/time/chrono/v;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p0, Lj$/time/chrono/v;

    .line 9
    .line 10
    invoke-static {p1}, Lj$/time/LocalDate;->W(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lj$/time/chrono/v;-><init>(Lj$/time/LocalDate;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final L(Ljava/util/Map;Lj$/time/format/v;)Lj$/time/chrono/ChronoLocalDate;
    .locals 12

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lj$/time/chrono/t;->x(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/p;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Lj$/time/temporal/p;->a(JLj$/time/temporal/TemporalField;)I

    move-result v1

    .line 3
    invoke-static {v1}, Lj$/time/chrono/w;->j(I)Lj$/time/chrono/w;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 4
    :goto_0
    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p0, v3}, Lj$/time/chrono/t;->x(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/p;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v3}, Lj$/time/temporal/p;->a(JLj$/time/temporal/TemporalField;)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-nez v1, :cond_2

    if-eqz v4, :cond_2

    .line 6
    sget-object v7, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lj$/time/format/v;->STRICT:Lj$/time/format/v;

    if-eq p2, v7, :cond_2

    .line 7
    sget-object v1, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    array-length v7, v1

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lj$/time/chrono/w;

    array-length v8, v1

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lj$/time/chrono/w;

    .line 8
    array-length v1, v1

    sub-int/2addr v1, v6

    aget-object v1, v7, v1

    :cond_2
    if-eqz v4, :cond_d

    if-eqz v1, :cond_d

    .line 9
    sget-object v4, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "era"

    const-wide/16 v9, 0x1

    if-eqz v7, :cond_9

    .line 10
    sget-object v7, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lj$/time/format/v;->LENIENT:Lj$/time/format/v;

    if-ne p2, v0, :cond_3

    .line 14
    iget-object p0, v1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 15
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result p0

    add-int/2addr p0, v5

    sub-int/2addr p0, v6

    .line 16
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, v9, v10}, Lj$/com/android/tools/r8/a;->S(JJ)J

    move-result-wide v0

    .line 17
    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v9, v10}, Lj$/com/android/tools/r8/a;->S(JJ)J

    move-result-wide p1

    .line 18
    new-instance v2, Lj$/time/chrono/v;

    invoke-static {p0, v6, v6}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    invoke-direct {v2, p0}, Lj$/time/chrono/v;-><init>(Lj$/time/LocalDate;)V

    .line 19
    sget-object p0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v2, v0, v1, p0}, Lj$/time/chrono/v;->Z(JLj$/time/temporal/ChronoUnit;)Lj$/time/chrono/v;

    move-result-object p0

    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1, p2, v0}, Lj$/time/chrono/v;->Z(JLj$/time/temporal/ChronoUnit;)Lj$/time/chrono/v;

    move-result-object p0

    return-object p0

    .line 20
    :cond_3
    invoke-virtual {p0, v4}, Lj$/time/chrono/t;->x(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/p;

    move-result-object v0

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v4}, Lj$/time/temporal/p;->a(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 21
    invoke-virtual {p0, v7}, Lj$/time/chrono/t;->x(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/p;

    move-result-object p0

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v7}, Lj$/time/temporal/p;->a(JLj$/time/temporal/TemporalField;)I

    move-result p0

    .line 22
    sget-object p1, Lj$/time/format/v;->SMART:Lj$/time/format/v;

    if-ne p2, p1, :cond_7

    if-lt v5, v6, :cond_6

    .line 23
    iget-object p1, v1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 24
    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    move-result p1

    add-int/2addr p1, v5

    sub-int/2addr p1, v6

    .line 25
    :try_start_0
    new-instance p2, Lj$/time/chrono/v;

    invoke-static {p1, v0, p0}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    invoke-direct {p2, p0}, Lj$/time/chrono/v;-><init>(Lj$/time/LocalDate;)V
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 26
    :catch_0
    new-instance p0, Lj$/time/chrono/v;

    invoke-static {p1, v0, v6}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/v;-><init>(Lj$/time/LocalDate;)V

    .line 27
    new-instance p1, Lj$/desugar/sun/nio/fs/m;

    const/4 p2, 0x6

    .line 28
    invoke-direct {p1, p2}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 29
    invoke-virtual {p0, p1}, Lj$/time/chrono/v;->b0(Lj$/desugar/sun/nio/fs/m;)Lj$/time/chrono/v;

    move-result-object p2

    .line 30
    :goto_2
    iget-object p0, p2, Lj$/time/chrono/v;->b:Lj$/time/chrono/w;

    if-eq p0, v1, :cond_5

    .line 31
    sget-object p0, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    .line 32
    invoke-static {p2, p0}, Lj$/time/temporal/n;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result p0

    if-le p0, v6, :cond_5

    if-gt v5, v6, :cond_4

    goto :goto_3

    .line 33
    :cond_4
    new-instance p0, Lj$/time/DateTimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid YearOfEra for Era: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    return-object p2

    .line 34
    :cond_6
    const-string p0, "Invalid YearOfEra: "

    invoke-static {p0, v5}, Lj$/nio/file/j;->d(Ljava/lang/String;I)V

    return-object v2

    .line 35
    :cond_7
    sget-object p1, Lj$/time/chrono/v;->d:Lj$/time/LocalDate;

    .line 36
    invoke-static {v1, v8}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iget-object p1, v1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 38
    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    move-result p1

    add-int/2addr p1, v5

    sub-int/2addr p1, v6

    invoke-static {p1, v0, p0}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    .line 39
    iget-object p1, v1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 40
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->Z(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {p0}, Lj$/time/chrono/w;->h(Lj$/time/LocalDate;)Lj$/time/chrono/w;

    move-result-object p1

    if-ne v1, p1, :cond_8

    .line 41
    new-instance p1, Lj$/time/chrono/v;

    invoke-direct {p1, v1, v5, p0}, Lj$/time/chrono/v;-><init>(Lj$/time/chrono/w;ILj$/time/LocalDate;)V

    return-object p1

    .line 42
    :cond_8
    const-string p0, "year, month, and day not valid for Era"

    invoke-static {p0}, Lj$/nio/file/j;->k(Ljava/lang/String;)V

    return-object v2

    .line 43
    :cond_9
    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 44
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lj$/time/format/v;->LENIENT:Lj$/time/format/v;

    if-ne p2, v0, :cond_a

    .line 47
    iget-object p0, v1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 48
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result p0

    add-int/2addr p0, v5

    sub-int/2addr p0, v6

    .line 49
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v9, v10}, Lj$/com/android/tools/r8/a;->S(JJ)J

    move-result-wide p1

    .line 50
    new-instance v0, Lj$/time/chrono/v;

    invoke-static {p0, v6}, Lj$/time/LocalDate;->e0(II)Lj$/time/LocalDate;

    move-result-object p0

    invoke-direct {v0, p0}, Lj$/time/chrono/v;-><init>(Lj$/time/LocalDate;)V

    .line 51
    sget-object p0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v0, p1, p2, p0}, Lj$/time/chrono/v;->Z(JLj$/time/temporal/ChronoUnit;)Lj$/time/chrono/v;

    move-result-object p0

    return-object p0

    .line 52
    :cond_a
    invoke-virtual {p0, v4}, Lj$/time/chrono/t;->x(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/p;

    move-result-object p0

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v4}, Lj$/time/temporal/p;->a(JLj$/time/temporal/TemporalField;)I

    move-result p0

    .line 53
    sget-object p1, Lj$/time/chrono/v;->d:Lj$/time/LocalDate;

    .line 54
    invoke-static {v1, v8}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iget-object p1, v1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    if-ne v5, v6, :cond_b

    .line 56
    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    move-result p1

    .line 57
    iget-object p2, v1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 58
    invoke-virtual {p2}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result p2

    add-int/2addr p2, p0

    sub-int/2addr p2, v6

    .line 59
    invoke-static {p1, p2}, Lj$/time/LocalDate;->e0(II)Lj$/time/LocalDate;

    move-result-object p0

    goto :goto_4

    .line 60
    :cond_b
    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    move-result p1

    add-int/2addr p1, v5

    sub-int/2addr p1, v6

    invoke-static {p1, p0}, Lj$/time/LocalDate;->e0(II)Lj$/time/LocalDate;

    move-result-object p0

    .line 61
    :goto_4
    iget-object p1, v1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 62
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->Z(Lj$/time/chrono/ChronoLocalDate;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {p0}, Lj$/time/chrono/w;->h(Lj$/time/LocalDate;)Lj$/time/chrono/w;

    move-result-object p1

    if-ne v1, p1, :cond_c

    .line 63
    new-instance p1, Lj$/time/chrono/v;

    invoke-direct {p1, v1, v5, p0}, Lj$/time/chrono/v;-><init>(Lj$/time/chrono/w;ILj$/time/LocalDate;)V

    return-object p1

    .line 64
    :cond_c
    const-string p0, "Invalid parameters"

    invoke-static {p0}, Lj$/nio/file/j;->k(Ljava/lang/String;)V

    :cond_d
    return-object v2
.end method

.method public final P(III)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 1
    new-instance p0, Lj$/time/chrono/v;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lj$/time/chrono/v;-><init>(Lj$/time/LocalDate;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final R(Ljava/util/Map;Lj$/time/format/v;)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lj$/time/chrono/a;->R(Ljava/util/Map;Lj$/time/format/v;)Lj$/time/chrono/ChronoLocalDate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lj$/time/chrono/v;

    .line 6
    .line 7
    return-object p0
.end method

.method public final S(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/time/chrono/i;->V(Lj$/time/chrono/j;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final h(J)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 1
    new-instance p0, Lj$/time/chrono/v;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lj$/time/chrono/v;-><init>(Lj$/time/LocalDate;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Japanese"

    .line 2
    .line 3
    return-object p0
.end method

.method public final m()Lj$/time/chrono/ChronoLocalDate;
    .locals 1

    .line 1
    new-instance p0, Lj$/time/a;

    .line 2
    .line 3
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lj$/time/a;-><init>(Lj$/time/ZoneId;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lj$/time/LocalDate;->d0(Lj$/time/a;)Lj$/time/LocalDate;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Lj$/time/chrono/v;

    .line 15
    .line 16
    invoke-static {p0}, Lj$/time/LocalDate;->W(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Lj$/time/chrono/v;-><init>(Lj$/time/LocalDate;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "japanese"

    .line 2
    .line 3
    return-object p0
.end method

.method public final s(II)Lj$/time/chrono/ChronoLocalDate;
    .locals 0

    .line 1
    new-instance p0, Lj$/time/chrono/v;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lj$/time/LocalDate;->e0(II)Lj$/time/LocalDate;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lj$/time/chrono/v;-><init>(Lj$/time/LocalDate;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lj$/time/chrono/c0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p0}, Lj$/time/chrono/c0;-><init>(BLjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final x(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/p;
    .locals 7

    .line 1
    sget-object p0, Lj$/time/chrono/s;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    aget p0, p0, v0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Lj$/time/temporal/ChronoField;->b:Lj$/time/temporal/p;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    sget-object p0, Lj$/time/chrono/w;->d:Lj$/time/chrono/w;

    .line 18
    .line 19
    iget p0, p0, Lj$/time/chrono/w;->a:I

    .line 20
    .line 21
    int-to-long p0, p0

    .line 22
    sget-object v0, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    .line 23
    .line 24
    array-length v2, v0

    .line 25
    sub-int/2addr v2, v1

    .line 26
    aget-object v0, v0, v2

    .line 27
    .line 28
    iget v0, v0, Lj$/time/chrono/w;->a:I

    .line 29
    .line 30
    int-to-long v0, v0

    .line 31
    invoke-static {p0, p1, v0, v1}, Lj$/time/temporal/p;->f(JJ)Lj$/time/temporal/p;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_1
    sget-object p0, Lj$/time/chrono/v;->d:Lj$/time/LocalDate;

    .line 37
    .line 38
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    int-to-long p0, p0

    .line 43
    const-wide/32 v0, 0x3b9ac9ff

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1, v0, v1}, Lj$/time/temporal/p;->f(JJ)Lj$/time/temporal/p;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_2
    sget-object p0, Lj$/time/chrono/w;->d:Lj$/time/chrono/w;

    .line 52
    .line 53
    sget-object p0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 54
    .line 55
    iget-object p0, p0, Lj$/time/temporal/ChronoField;->b:Lj$/time/temporal/p;

    .line 56
    .line 57
    iget-wide p0, p0, Lj$/time/temporal/p;->c:J

    .line 58
    .line 59
    sget-object v2, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    .line 60
    .line 61
    array-length v3, v2

    .line 62
    :goto_0
    if-ge v0, v3, :cond_2

    .line 63
    .line 64
    aget-object v4, v2, v0

    .line 65
    .line 66
    iget-object v5, v4, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 67
    .line 68
    invoke-virtual {v5}, Lj$/time/LocalDate;->a0()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_0

    .line 73
    .line 74
    const/16 v5, 0x16e

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    const/16 v5, 0x16d

    .line 78
    .line 79
    :goto_1
    iget-object v6, v4, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 80
    .line 81
    invoke-virtual {v6}, Lj$/time/LocalDate;->getDayOfYear()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    sub-int/2addr v5, v6

    .line 86
    add-int/2addr v5, v1

    .line 87
    int-to-long v5, v5

    .line 88
    invoke-static {p0, p1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide p0

    .line 92
    invoke-virtual {v4}, Lj$/time/chrono/w;->i()Lj$/time/chrono/w;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    if-eqz v5, :cond_1

    .line 97
    .line 98
    invoke-virtual {v4}, Lj$/time/chrono/w;->i()Lj$/time/chrono/w;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v4, v4, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 103
    .line 104
    invoke-virtual {v4}, Lj$/time/LocalDate;->getDayOfYear()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    sub-int/2addr v4, v1

    .line 109
    int-to-long v4, v4

    .line 110
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide p0

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 118
    .line 119
    iget-object v0, v0, Lj$/time/temporal/ChronoField;->b:Lj$/time/temporal/p;

    .line 120
    .line 121
    iget-wide v0, v0, Lj$/time/temporal/p;->d:J

    .line 122
    .line 123
    invoke-static {p0, p1, v0, v1}, Lj$/time/temporal/p;->g(JJ)Lj$/time/temporal/p;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_3
    sget-object p0, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    .line 129
    .line 130
    array-length p1, p0

    .line 131
    sub-int/2addr p1, v1

    .line 132
    aget-object p1, p0, p1

    .line 133
    .line 134
    iget-object p1, p1, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 135
    .line 136
    invoke-virtual {p1}, Lj$/time/LocalDate;->getYear()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    array-length v2, p0

    .line 141
    sub-int/2addr v2, v1

    .line 142
    aget-object v2, p0, v2

    .line 143
    .line 144
    iget-object v2, v2, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 145
    .line 146
    invoke-virtual {v2}, Lj$/time/LocalDate;->getYear()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    const v3, 0x3b9aca00

    .line 151
    .line 152
    .line 153
    sub-int/2addr v3, v2

    .line 154
    aget-object p0, p0, v0

    .line 155
    .line 156
    iget-object p0, p0, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 157
    .line 158
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    move v0, v1

    .line 163
    :goto_2
    sget-object v2, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    .line 164
    .line 165
    array-length v4, v2

    .line 166
    if-ge v0, v4, :cond_3

    .line 167
    .line 168
    aget-object v2, v2, v0

    .line 169
    .line 170
    iget-object v4, v2, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 171
    .line 172
    invoke-virtual {v4}, Lj$/time/LocalDate;->getYear()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    sub-int/2addr v4, p0

    .line 177
    add-int/2addr v4, v1

    .line 178
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    iget-object p0, v2, Lj$/time/chrono/w;->b:Lj$/time/LocalDate;

    .line 183
    .line 184
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    add-int/lit8 v0, v0, 0x1

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_3
    int-to-long v0, v3

    .line 192
    const p0, 0x3b9ac9ff

    .line 193
    .line 194
    .line 195
    sub-int/2addr p0, p1

    .line 196
    int-to-long p0, p0

    .line 197
    invoke-static {v0, v1, p0, p1}, Lj$/time/temporal/p;->g(JJ)Lj$/time/temporal/p;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    :pswitch_4
    const-string p0, "Unsupported field: "

    .line 203
    .line 204
    invoke-static {p1, p0}, Lj$/nio/file/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const/4 p0, 0x0

    .line 208
    return-object p0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final z()Ljava/util/List;
    .locals 1

    .line 1
    sget-object p0, Lj$/time/chrono/w;->e:[Lj$/time/chrono/w;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, [Lj$/time/chrono/w;

    .line 9
    .line 10
    invoke-static {p0}, Lj$/com/android/tools/r8/a;->E([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
