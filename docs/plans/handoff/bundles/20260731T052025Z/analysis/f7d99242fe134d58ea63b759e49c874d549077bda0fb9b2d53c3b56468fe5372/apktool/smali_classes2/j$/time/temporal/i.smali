.class public final enum Lj$/time/temporal/i;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/time/temporal/TemporalField;


# static fields
.field public static final enum JULIAN_DAY:Lj$/time/temporal/i;

.field public static final enum MODIFIED_JULIAN_DAY:Lj$/time/temporal/i;

.field public static final enum RATA_DIE:Lj$/time/temporal/i;

.field public static final synthetic d:[Lj$/time/temporal/i;

.field private static final serialVersionUID:J = -0x681b1f35efa83fd4L


# instance fields
.field public final transient a:Ljava/lang/String;

.field public final transient b:Lj$/time/temporal/p;

.field public final transient c:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lj$/time/temporal/i;

    .line 2
    .line 3
    sget-object v5, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 4
    .line 5
    sget-object v6, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 6
    .line 7
    move-object v4, v5

    .line 8
    move-object v5, v6

    .line 9
    const-wide/32 v6, 0x253d8c

    .line 10
    .line 11
    .line 12
    const-string v1, "JULIAN_DAY"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "JulianDay"

    .line 16
    .line 17
    invoke-direct/range {v0 .. v7}, Lj$/time/temporal/i;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;J)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lj$/time/temporal/i;->JULIAN_DAY:Lj$/time/temporal/i;

    .line 21
    .line 22
    new-instance v1, Lj$/time/temporal/i;

    .line 23
    .line 24
    move-object v6, v5

    .line 25
    move-object v5, v4

    .line 26
    const-string v4, "ModifiedJulianDay"

    .line 27
    .line 28
    const-wide/32 v7, 0x9e8b

    .line 29
    .line 30
    .line 31
    const-string v2, "MODIFIED_JULIAN_DAY"

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct/range {v1 .. v8}, Lj$/time/temporal/i;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;J)V

    .line 35
    .line 36
    .line 37
    move-object v9, v1

    .line 38
    move-object v4, v5

    .line 39
    move-object v5, v6

    .line 40
    sput-object v9, Lj$/time/temporal/i;->MODIFIED_JULIAN_DAY:Lj$/time/temporal/i;

    .line 41
    .line 42
    new-instance v1, Lj$/time/temporal/i;

    .line 43
    .line 44
    move-object v5, v4

    .line 45
    const-string v4, "RataDie"

    .line 46
    .line 47
    const-wide/32 v7, 0xaf93b

    .line 48
    .line 49
    .line 50
    const-string v2, "RATA_DIE"

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    invoke-direct/range {v1 .. v8}, Lj$/time/temporal/i;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;J)V

    .line 54
    .line 55
    .line 56
    sput-object v1, Lj$/time/temporal/i;->RATA_DIE:Lj$/time/temporal/i;

    .line 57
    .line 58
    const/4 v2, 0x3

    .line 59
    new-array v2, v2, [Lj$/time/temporal/i;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    aput-object v0, v2, v3

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    aput-object v9, v2, v0

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    aput-object v1, v2, v0

    .line 69
    .line 70
    sput-object v2, Lj$/time/temporal/i;->d:[Lj$/time/temporal/i;

    .line 71
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/ChronoUnit;Lj$/time/temporal/ChronoUnit;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lj$/time/temporal/i;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-wide p1, -0x550a313cdaL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    add-long/2addr p1, p6

    .line 12
    const-wide p3, 0x550a1b48f7L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    add-long/2addr p3, p6

    .line 18
    invoke-static {p1, p2, p3, p4}, Lj$/time/temporal/p;->f(JJ)Lj$/time/temporal/p;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lj$/time/temporal/i;->b:Lj$/time/temporal/p;

    .line 23
    .line 24
    iput-wide p6, p0, Lj$/time/temporal/i;->c:J

    .line 25
    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/i;
    .locals 1

    .line 1
    const-class v0, Lj$/time/temporal/i;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lj$/time/temporal/i;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lj$/time/temporal/i;
    .locals 1

    .line 1
    sget-object v0, Lj$/time/temporal/i;->d:[Lj$/time/temporal/i;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lj$/time/temporal/i;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lj$/time/temporal/i;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final F(Lj$/time/temporal/TemporalAccessor;)J
    .locals 2

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->J(Lj$/time/temporal/TemporalField;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide p0, p0, Lj$/time/temporal/i;->c:J

    .line 8
    .line 9
    add-long/2addr v0, p0

    .line 10
    return-wide v0
.end method

.method public final J(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 3

    .line 1
    iget-object v0, p0, Lj$/time/temporal/i;->b:Lj$/time/temporal/p;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/p;->e(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    .line 10
    .line 11
    iget-wide v1, p0, Lj$/time/temporal/i;->c:J

    .line 12
    .line 13
    invoke-static {p2, p3, v1, v2}, Lj$/com/android/tools/r8/a;->S(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p2

    .line 17
    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/Temporal;->b(JLj$/time/temporal/TemporalField;)Lj$/time/temporal/Temporal;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p1, Lj$/time/DateTimeException;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "Invalid value: "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lj$/time/temporal/i;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, " "

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {p1, p0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public final isDateBased()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final k(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 0

    .line 1
    sget-object p0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->d(Lj$/time/temporal/TemporalField;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final m(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/p;
    .locals 1

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->d(Lj$/time/temporal/TemporalField;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lj$/time/temporal/i;->b:Lj$/time/temporal/p;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p1, "Unsupported field: "

    .line 13
    .line 14
    invoke-static {p0, p1}, Lj$/nio/file/j;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final n(Ljava/util/Map;Lj$/time/format/u;Lj$/time/format/v;)Lj$/time/temporal/TemporalAccessor;
    .locals 4

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {p2}, Lj$/com/android/tools/r8/a;->A(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p2, Lj$/time/format/v;->LENIENT:Lj$/time/format/v;

    .line 16
    .line 17
    iget-wide v2, p0, Lj$/time/temporal/i;->c:J

    .line 18
    .line 19
    if-ne p3, p2, :cond_0

    .line 20
    .line 21
    invoke-static {v0, v1, v2, v3}, Lj$/com/android/tools/r8/a;->S(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    invoke-interface {p1, p2, p3}, Lj$/time/chrono/j;->h(J)Lj$/time/chrono/ChronoLocalDate;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    iget-object p2, p0, Lj$/time/temporal/i;->b:Lj$/time/temporal/p;

    .line 31
    .line 32
    invoke-virtual {p2, v0, v1, p0}, Lj$/time/temporal/p;->b(JLj$/time/temporal/TemporalField;)V

    .line 33
    .line 34
    .line 35
    sub-long/2addr v0, v2

    .line 36
    invoke-interface {p1, v0, v1}, Lj$/time/chrono/j;->h(J)Lj$/time/chrono/ChronoLocalDate;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/temporal/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final u()Lj$/time/temporal/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/temporal/i;->b:Lj$/time/temporal/p;

    .line 2
    .line 3
    return-object p0
.end method
