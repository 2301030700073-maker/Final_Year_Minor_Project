.class public final Lj$/time/format/d0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;


# instance fields
.field public final a:Ljava/util/Map;

.field public b:Lj$/time/ZoneId;

.field public c:Lj$/time/chrono/a;

.field public d:Z

.field public e:Lj$/time/format/e0;

.field public f:Lj$/time/chrono/ChronoLocalDate;

.field public g:Lj$/time/LocalTime;

.field public h:Lj$/time/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 10
    .line 11
    sget-object v0, Lj$/time/q;->d:Lj$/time/q;

    .line 12
    .line 13
    iput-object v0, p0, Lj$/time/format/d0;->h:Lj$/time/q;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Long;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lj$/time/c;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Conflict found: "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p0, " differs from "

    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, " while resolving  "

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lj$/time/temporal/n;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDate;->c(Lj$/time/temporal/n;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->c(Lj$/time/temporal/n;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    .line 34
    instance-of v0, p1, Lj$/time/temporal/a;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->f(Lj$/time/temporal/TemporalAccessor;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method public final synthetic f(Lj$/time/temporal/n;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/time/temporal/o;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/n;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic h(Lj$/time/temporal/n;)Lj$/time/temporal/q;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/time/temporal/o;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/n;)Lj$/time/temporal/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final i(Lj$/time/f;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lj$/time/temporal/o;->a:Lj$/time/f;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lj$/time/temporal/o;->b:Lj$/time/f;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lj$/time/format/d0;->c:Lj$/time/chrono/a;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    sget-object v0, Lj$/time/temporal/o;->f:Lj$/time/f;

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 20
    .line 21
    if-eqz p0, :cond_8

    .line 22
    .line 23
    invoke-static {p0}, Lj$/time/LocalDate;->w(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_2
    sget-object v0, Lj$/time/temporal/o;->g:Lj$/time/f;

    .line 29
    .line 30
    if-ne p1, v0, :cond_3

    .line 31
    .line 32
    iget-object p0, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_3
    sget-object v0, Lj$/time/temporal/o;->d:Lj$/time/f;

    .line 36
    .line 37
    if-ne p1, v0, :cond_6

    .line 38
    .line 39
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 40
    .line 41
    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 42
    .line 43
    check-cast v0, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Long;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Lj$/time/ZoneOffset;->D(I)Lj$/time/ZoneOffset;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_4
    iget-object v0, p0, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 63
    .line 64
    instance-of v1, v0, Lj$/time/ZoneOffset;

    .line 65
    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_5
    invoke-virtual {p1, p0}, Lj$/time/f;->e(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_6
    sget-object v0, Lj$/time/temporal/o;->e:Lj$/time/f;

    .line 75
    .line 76
    if-ne p1, v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Lj$/time/f;->e(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_7
    sget-object v0, Lj$/time/temporal/o;->c:Lj$/time/f;

    .line 84
    .line 85
    if-ne p1, v0, :cond_9

    .line 86
    .line 87
    :cond_8
    const/4 p0, 0x0

    .line 88
    return-object p0

    .line 89
    :cond_9
    invoke-virtual {p1, p0}, Lj$/time/f;->e(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public final k(Lj$/time/temporal/TemporalAccessor;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lj$/time/temporal/n;

    .line 30
    .line 31
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->c(Lj$/time/temporal/n;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    :try_start_0
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->q(Lj$/time/temporal/n;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    cmp-long v0, v2, v4

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance p0, Lj$/time/c;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v6, "Conflict found: Field "

    .line 64
    .line 65
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v6, " "

    .line 72
    .line 73
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, " differs from "

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, " derived from "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_2
    return-void
.end method

.method public final q(Lj$/time/temporal/n;)J
    .locals 1

    .line 1
    const-string v0, "field"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 7
    .line 8
    check-cast v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Long;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    return-wide p0

    .line 23
    :cond_0
    iget-object v0, p0, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDate;->c(Lj$/time/temporal/n;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 34
    .line 35
    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->q(Lj$/time/temporal/n;)J

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    return-wide p0

    .line 40
    :cond_1
    iget-object v0, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->c(Lj$/time/temporal/n;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->q(Lj$/time/temporal/n;)J

    .line 53
    .line 54
    .line 55
    move-result-wide p0

    .line 56
    return-wide p0

    .line 57
    :cond_2
    instance-of v0, p1, Lj$/time/temporal/a;

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/TemporalAccessor;)J

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    return-wide p0

    .line 66
    :cond_3
    new-instance p0, Lj$/time/temporal/p;

    .line 67
    .line 68
    const-string v0, "Unsupported field: "

    .line 69
    .line 70
    invoke-static {v0, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/n;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x2c

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lj$/time/format/d0;->c:Lj$/time/chrono/a;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    :cond_1
    const-string v1, " resolved to "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const/16 v1, 0x54

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object p0, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lj$/time/format/d0;->v(Lj$/time/ZoneId;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 22
    .line 23
    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 24
    .line 25
    check-cast v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Long;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Lj$/time/ZoneOffset;->D(I)Lj$/time/ZoneOffset;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lj$/time/format/d0;->v(Lj$/time/ZoneId;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final v(Lj$/time/ZoneId;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-static {v2, v3}, Lj$/time/Instant;->ofEpochSecond(J)Lj$/time/Instant;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lj$/time/format/d0;->c:Lj$/time/chrono/a;

    .line 22
    .line 23
    invoke-virtual {v2, v0, p1}, Lj$/time/chrono/a;->E(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lj$/time/format/d0;->z(Lj$/time/chrono/ChronoLocalDate;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    .line 35
    .line 36
    invoke-interface {p1}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalTime()Lj$/time/LocalTime;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lj$/time/LocalTime;->toSecondOfDay()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    int-to-long v2, p1

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, v1, v0, p1}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final w(JJJJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 2
    .line 3
    sget-object v1, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-wide v0, 0x34630b8a000L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, v0, v1}, Lj$/time/a;->U(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    const-wide v0, 0xdf8475800L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-static {p3, p4, v0, v1}, Lj$/time/a;->U(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide p3

    .line 26
    invoke-static {p1, p2, p3, p4}, Lj$/time/a;->P(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    const-wide/32 p3, 0x3b9aca00

    .line 31
    .line 32
    .line 33
    invoke-static {p5, p6, p3, p4}, Lj$/time/a;->U(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide p3

    .line 37
    invoke-static {p1, p2, p3, p4}, Lj$/time/a;->P(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    invoke-static {p1, p2, p7, p8}, Lj$/time/a;->P(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    const-wide p3, 0x4e94914f0000L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2, p3, p4}, Lj$/time/a;->T(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide p5

    .line 54
    long-to-int p5, p5

    .line 55
    invoke-static {p1, p2, p3, p4}, Lj$/time/a;->S(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    invoke-static {p1, p2}, Lj$/time/LocalTime;->z(J)Lj$/time/LocalTime;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v2, v2, p5}, Lj$/time/q;->a(III)Lj$/time/q;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p0, p1, p2}, Lj$/time/format/d0;->y(Lj$/time/LocalTime;Lj$/time/q;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 72
    .line 73
    iget-object v1, v0, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    .line 74
    .line 75
    invoke-virtual {v1, p3, p4, v0}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    sget-object p4, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 80
    .line 81
    iget-object v0, p4, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    .line 82
    .line 83
    invoke-virtual {v0, p7, p8, p4}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 84
    .line 85
    .line 86
    move-result p4

    .line 87
    iget-object p7, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 88
    .line 89
    sget-object p8, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 90
    .line 91
    if-ne p7, p8, :cond_1

    .line 92
    .line 93
    const-wide/16 p7, 0x18

    .line 94
    .line 95
    cmp-long p7, p1, p7

    .line 96
    .line 97
    if-nez p7, :cond_1

    .line 98
    .line 99
    if-nez p3, :cond_1

    .line 100
    .line 101
    const-wide/16 p7, 0x0

    .line 102
    .line 103
    cmp-long p7, p5, p7

    .line 104
    .line 105
    if-nez p7, :cond_1

    .line 106
    .line 107
    if-nez p4, :cond_1

    .line 108
    .line 109
    sget-object p1, Lj$/time/LocalTime;->MIDNIGHT:Lj$/time/LocalTime;

    .line 110
    .line 111
    const/4 p2, 0x1

    .line 112
    invoke-static {v2, v2, p2}, Lj$/time/q;->a(III)Lj$/time/q;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p0, p1, p2}, Lj$/time/format/d0;->y(Lj$/time/LocalTime;Lj$/time/q;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_1
    sget-object p7, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 121
    .line 122
    iget-object p8, p7, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    .line 123
    .line 124
    invoke-virtual {p8, p1, p2, p7}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    sget-object p2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 129
    .line 130
    iget-object p7, p2, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    .line 131
    .line 132
    invoke-virtual {p7, p5, p6, p2}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    invoke-static {p1, p3, p2, p4}, Lj$/time/LocalTime;->y(IIII)Lj$/time/LocalTime;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    sget-object p2, Lj$/time/q;->d:Lj$/time/q;

    .line 141
    .line 142
    invoke-virtual {p0, p1, p2}, Lj$/time/format/d0;->y(Lj$/time/LocalTime;Lj$/time/q;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final x()V
    .locals 14

    .line 1
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 16
    .line 17
    check-cast v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 30
    .line 31
    sget-object v6, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 32
    .line 33
    if-eq v0, v6, :cond_0

    .line 34
    .line 35
    sget-object v6, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 36
    .line 37
    if-ne v0, v6, :cond_1

    .line 38
    .line 39
    cmp-long v0, v4, v2

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    :cond_0
    invoke-virtual {v1, v4, v5}, Lj$/time/temporal/a;->o(J)V

    .line 44
    .line 45
    .line 46
    :cond_1
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 47
    .line 48
    const-wide/16 v6, 0x18

    .line 49
    .line 50
    cmp-long v6, v4, v6

    .line 51
    .line 52
    if-nez v6, :cond_2

    .line 53
    .line 54
    move-wide v4, v2

    .line 55
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p0, v1, v0, v4}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 63
    .line 64
    sget-object v1, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    .line 65
    .line 66
    check-cast v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const-wide/16 v4, 0xc

    .line 73
    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 77
    .line 78
    check-cast v0, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 91
    .line 92
    sget-object v8, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 93
    .line 94
    if-eq v0, v8, :cond_4

    .line 95
    .line 96
    sget-object v8, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 97
    .line 98
    if-ne v0, v8, :cond_5

    .line 99
    .line 100
    cmp-long v0, v6, v2

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    :cond_4
    invoke-virtual {v1, v6, v7}, Lj$/time/temporal/a;->o(J)V

    .line 105
    .line 106
    .line 107
    :cond_5
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    .line 108
    .line 109
    cmp-long v8, v6, v4

    .line 110
    .line 111
    if-nez v8, :cond_6

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    move-wide v2, v6

    .line 115
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p0, v1, v0, v2}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 123
    .line 124
    sget-object v1, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    .line 125
    .line 126
    check-cast v0, Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 135
    .line 136
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    .line 137
    .line 138
    check-cast v0, Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_9

    .line 145
    .line 146
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 147
    .line 148
    check-cast v0, Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/lang/Long;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 157
    .line 158
    .line 159
    move-result-wide v6

    .line 160
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 161
    .line 162
    check-cast v0, Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Ljava/lang/Long;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 171
    .line 172
    .line 173
    move-result-wide v8

    .line 174
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 175
    .line 176
    sget-object v3, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 177
    .line 178
    if-ne v0, v3, :cond_8

    .line 179
    .line 180
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 181
    .line 182
    invoke-static {v6, v7, v4, v5}, Lj$/time/a;->U(JJ)J

    .line 183
    .line 184
    .line 185
    move-result-wide v2

    .line 186
    invoke-static {v2, v3, v8, v9}, Lj$/time/a;->P(JJ)J

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {p0, v1, v0, v2}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_8
    invoke-virtual {v1, v6, v7}, Lj$/time/temporal/a;->o(J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v6, v7}, Lj$/time/temporal/a;->o(J)V

    .line 202
    .line 203
    .line 204
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 205
    .line 206
    mul-long/2addr v6, v4

    .line 207
    add-long/2addr v6, v8

    .line 208
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {p0, v1, v0, v2}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 213
    .line 214
    .line 215
    :cond_9
    :goto_1
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 216
    .line 217
    sget-object v1, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    .line 218
    .line 219
    check-cast v0, Ljava/util/HashMap;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    const-wide/16 v2, 0x3c

    .line 226
    .line 227
    if-eqz v0, :cond_b

    .line 228
    .line 229
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 230
    .line 231
    check-cast v0, Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ljava/lang/Long;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 240
    .line 241
    .line 242
    move-result-wide v4

    .line 243
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 244
    .line 245
    sget-object v6, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 246
    .line 247
    if-eq v0, v6, :cond_a

    .line 248
    .line 249
    invoke-virtual {v1, v4, v5}, Lj$/time/temporal/a;->o(J)V

    .line 250
    .line 251
    .line 252
    :cond_a
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 253
    .line 254
    const-wide v6, 0x34630b8a000L

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    div-long v6, v4, v6

    .line 260
    .line 261
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    invoke-virtual {p0, v1, v0, v6}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 266
    .line 267
    .line 268
    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 269
    .line 270
    const-wide v6, 0xdf8475800L

    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    div-long v6, v4, v6

    .line 276
    .line 277
    rem-long/2addr v6, v2

    .line 278
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {p0, v1, v0, v6}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 283
    .line 284
    .line 285
    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 286
    .line 287
    const-wide/32 v6, 0x3b9aca00

    .line 288
    .line 289
    .line 290
    div-long v8, v4, v6

    .line 291
    .line 292
    rem-long/2addr v8, v2

    .line 293
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-virtual {p0, v1, v0, v8}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 298
    .line 299
    .line 300
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 301
    .line 302
    rem-long/2addr v4, v6

    .line 303
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {p0, v1, v0, v4}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 308
    .line 309
    .line 310
    :cond_b
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 311
    .line 312
    sget-object v1, Lj$/time/temporal/a;->MICRO_OF_DAY:Lj$/time/temporal/a;

    .line 313
    .line 314
    check-cast v0, Ljava/util/HashMap;

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    const-wide/32 v4, 0xf4240

    .line 321
    .line 322
    .line 323
    if-eqz v0, :cond_d

    .line 324
    .line 325
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 326
    .line 327
    check-cast v0, Ljava/util/HashMap;

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    check-cast v0, Ljava/lang/Long;

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 336
    .line 337
    .line 338
    move-result-wide v6

    .line 339
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 340
    .line 341
    sget-object v8, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 342
    .line 343
    if-eq v0, v8, :cond_c

    .line 344
    .line 345
    invoke-virtual {v1, v6, v7}, Lj$/time/temporal/a;->o(J)V

    .line 346
    .line 347
    .line 348
    :cond_c
    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    .line 349
    .line 350
    div-long v8, v6, v4

    .line 351
    .line 352
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    invoke-virtual {p0, v1, v0, v8}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 357
    .line 358
    .line 359
    sget-object v0, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 360
    .line 361
    rem-long/2addr v6, v4

    .line 362
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {p0, v1, v0, v6}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 367
    .line 368
    .line 369
    :cond_d
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 370
    .line 371
    sget-object v1, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    .line 372
    .line 373
    check-cast v0, Ljava/util/HashMap;

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    const-wide/16 v6, 0x3e8

    .line 380
    .line 381
    if-eqz v0, :cond_f

    .line 382
    .line 383
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 384
    .line 385
    check-cast v0, Ljava/util/HashMap;

    .line 386
    .line 387
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    check-cast v0, Ljava/lang/Long;

    .line 392
    .line 393
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 394
    .line 395
    .line 396
    move-result-wide v8

    .line 397
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 398
    .line 399
    sget-object v10, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 400
    .line 401
    if-eq v0, v10, :cond_e

    .line 402
    .line 403
    invoke-virtual {v1, v8, v9}, Lj$/time/temporal/a;->o(J)V

    .line 404
    .line 405
    .line 406
    :cond_e
    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    .line 407
    .line 408
    div-long v10, v8, v6

    .line 409
    .line 410
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    invoke-virtual {p0, v1, v0, v10}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 415
    .line 416
    .line 417
    sget-object v0, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    .line 418
    .line 419
    rem-long/2addr v8, v6

    .line 420
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 421
    .line 422
    .line 423
    move-result-object v8

    .line 424
    invoke-virtual {p0, v1, v0, v8}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 425
    .line 426
    .line 427
    :cond_f
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 428
    .line 429
    sget-object v1, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    .line 430
    .line 431
    check-cast v0, Ljava/util/HashMap;

    .line 432
    .line 433
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_11

    .line 438
    .line 439
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 440
    .line 441
    check-cast v0, Ljava/util/HashMap;

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    check-cast v0, Ljava/lang/Long;

    .line 448
    .line 449
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 450
    .line 451
    .line 452
    move-result-wide v8

    .line 453
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 454
    .line 455
    sget-object v10, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 456
    .line 457
    if-eq v0, v10, :cond_10

    .line 458
    .line 459
    invoke-virtual {v1, v8, v9}, Lj$/time/temporal/a;->o(J)V

    .line 460
    .line 461
    .line 462
    :cond_10
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 463
    .line 464
    const-wide/16 v10, 0xe10

    .line 465
    .line 466
    div-long v10, v8, v10

    .line 467
    .line 468
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 469
    .line 470
    .line 471
    move-result-object v10

    .line 472
    invoke-virtual {p0, v1, v0, v10}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 473
    .line 474
    .line 475
    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 476
    .line 477
    div-long v10, v8, v2

    .line 478
    .line 479
    rem-long/2addr v10, v2

    .line 480
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    invoke-virtual {p0, v1, v0, v10}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 485
    .line 486
    .line 487
    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 488
    .line 489
    rem-long/2addr v8, v2

    .line 490
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    invoke-virtual {p0, v1, v0, v8}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 495
    .line 496
    .line 497
    :cond_11
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 498
    .line 499
    sget-object v1, Lj$/time/temporal/a;->MINUTE_OF_DAY:Lj$/time/temporal/a;

    .line 500
    .line 501
    check-cast v0, Ljava/util/HashMap;

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-eqz v0, :cond_13

    .line 508
    .line 509
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 510
    .line 511
    check-cast v0, Ljava/util/HashMap;

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    check-cast v0, Ljava/lang/Long;

    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 520
    .line 521
    .line 522
    move-result-wide v8

    .line 523
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 524
    .line 525
    sget-object v10, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 526
    .line 527
    if-eq v0, v10, :cond_12

    .line 528
    .line 529
    invoke-virtual {v1, v8, v9}, Lj$/time/temporal/a;->o(J)V

    .line 530
    .line 531
    .line 532
    :cond_12
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 533
    .line 534
    div-long v10, v8, v2

    .line 535
    .line 536
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 537
    .line 538
    .line 539
    move-result-object v10

    .line 540
    invoke-virtual {p0, v1, v0, v10}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 541
    .line 542
    .line 543
    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 544
    .line 545
    rem-long/2addr v8, v2

    .line 546
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-virtual {p0, v1, v0, v2}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 551
    .line 552
    .line 553
    :cond_13
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 554
    .line 555
    sget-object v1, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 556
    .line 557
    check-cast v0, Ljava/util/HashMap;

    .line 558
    .line 559
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-eqz v0, :cond_18

    .line 564
    .line 565
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 566
    .line 567
    check-cast v0, Ljava/util/HashMap;

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    check-cast v0, Ljava/lang/Long;

    .line 574
    .line 575
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 576
    .line 577
    .line 578
    move-result-wide v2

    .line 579
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 580
    .line 581
    sget-object v8, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 582
    .line 583
    if-eq v0, v8, :cond_14

    .line 584
    .line 585
    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/a;->o(J)V

    .line 586
    .line 587
    .line 588
    :cond_14
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 589
    .line 590
    sget-object v9, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 591
    .line 592
    check-cast v0, Ljava/util/HashMap;

    .line 593
    .line 594
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    if-eqz v0, :cond_16

    .line 599
    .line 600
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 601
    .line 602
    check-cast v0, Ljava/util/HashMap;

    .line 603
    .line 604
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    check-cast v0, Ljava/lang/Long;

    .line 609
    .line 610
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 611
    .line 612
    .line 613
    move-result-wide v10

    .line 614
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 615
    .line 616
    if-eq v0, v8, :cond_15

    .line 617
    .line 618
    invoke-virtual {v9, v10, v11}, Lj$/time/temporal/a;->o(J)V

    .line 619
    .line 620
    .line 621
    :cond_15
    mul-long/2addr v10, v6

    .line 622
    rem-long/2addr v2, v6

    .line 623
    add-long/2addr v2, v10

    .line 624
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-virtual {p0, v9, v1, v0}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 629
    .line 630
    .line 631
    :cond_16
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 632
    .line 633
    sget-object v6, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    .line 634
    .line 635
    check-cast v0, Ljava/util/HashMap;

    .line 636
    .line 637
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    if-eqz v0, :cond_18

    .line 642
    .line 643
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 644
    .line 645
    check-cast v0, Ljava/util/HashMap;

    .line 646
    .line 647
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    check-cast v0, Ljava/lang/Long;

    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 654
    .line 655
    .line 656
    move-result-wide v9

    .line 657
    iget-object v0, p0, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 658
    .line 659
    if-eq v0, v8, :cond_17

    .line 660
    .line 661
    invoke-virtual {v6, v9, v10}, Lj$/time/temporal/a;->o(J)V

    .line 662
    .line 663
    .line 664
    :cond_17
    mul-long/2addr v9, v4

    .line 665
    rem-long/2addr v2, v4

    .line 666
    add-long/2addr v2, v9

    .line 667
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-virtual {p0, v6, v1, v0}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 672
    .line 673
    .line 674
    :cond_18
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 675
    .line 676
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 677
    .line 678
    check-cast v0, Ljava/util/HashMap;

    .line 679
    .line 680
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    if-eqz v0, :cond_19

    .line 685
    .line 686
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 687
    .line 688
    sget-object v3, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 689
    .line 690
    check-cast v0, Ljava/util/HashMap;

    .line 691
    .line 692
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    move-result v0

    .line 696
    if-eqz v0, :cond_19

    .line 697
    .line 698
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 699
    .line 700
    sget-object v4, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 701
    .line 702
    check-cast v0, Ljava/util/HashMap;

    .line 703
    .line 704
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v0

    .line 708
    if-eqz v0, :cond_19

    .line 709
    .line 710
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 711
    .line 712
    check-cast v0, Ljava/util/HashMap;

    .line 713
    .line 714
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    if-eqz v0, :cond_19

    .line 719
    .line 720
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 721
    .line 722
    check-cast v0, Ljava/util/HashMap;

    .line 723
    .line 724
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    check-cast v0, Ljava/lang/Long;

    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 731
    .line 732
    .line 733
    move-result-wide v6

    .line 734
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 735
    .line 736
    check-cast v0, Ljava/util/HashMap;

    .line 737
    .line 738
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    check-cast v0, Ljava/lang/Long;

    .line 743
    .line 744
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 745
    .line 746
    .line 747
    move-result-wide v8

    .line 748
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 749
    .line 750
    check-cast v0, Ljava/util/HashMap;

    .line 751
    .line 752
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    check-cast v0, Ljava/lang/Long;

    .line 757
    .line 758
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 759
    .line 760
    .line 761
    move-result-wide v10

    .line 762
    iget-object v0, p0, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 763
    .line 764
    check-cast v0, Ljava/util/HashMap;

    .line 765
    .line 766
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    check-cast v0, Ljava/lang/Long;

    .line 771
    .line 772
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 773
    .line 774
    .line 775
    move-result-wide v12

    .line 776
    move-object v5, p0

    .line 777
    invoke-virtual/range {v5 .. v13}, Lj$/time/format/d0;->w(JJJJ)V

    .line 778
    .line 779
    .line 780
    :cond_19
    return-void
.end method

.method public final y(Lj$/time/LocalTime;Lj$/time/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, " "

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lj$/time/format/d0;->h:Lj$/time/q;

    .line 14
    .line 15
    sget-object v0, Lj$/time/q;->d:Lj$/time/q;

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-ne p2, v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1, p2}, Lj$/time/q;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    :goto_0
    iput-object p2, p0, Lj$/time/format/d0;->h:Lj$/time/q;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object p0, p0, Lj$/time/format/d0;->h:Lj$/time/q;

    .line 33
    .line 34
    const-string p1, "Conflict found: Fields resolved to different excess periods: "

    .line 35
    .line 36
    invoke-static {p1, p0, v1, p2}, Lj$/time/h;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    iget-object p0, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 41
    .line 42
    const-string p2, "Conflict found: Fields resolved to different times: "

    .line 43
    .line 44
    invoke-static {p2, p0, v1, p1}, Lj$/time/h;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    iput-object p1, p0, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 49
    .line 50
    iput-object p2, p0, Lj$/time/format/d0;->h:Lj$/time/q;

    .line 51
    .line 52
    return-void
.end method

.method public final z(Lj$/time/chrono/ChronoLocalDate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDate;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 15
    .line 16
    const-string v0, "Conflict found: Fields resolved to two different dates: "

    .line 17
    .line 18
    const-string v1, " "

    .line 19
    .line 20
    invoke-static {v0, p0, v1, p1}, Lj$/time/h;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lj$/time/format/d0;->c:Lj$/time/chrono/a;

    .line 27
    .line 28
    invoke-interface {p1}, Lj$/time/chrono/ChronoLocalDate;->getChronology()Lj$/time/chrono/a;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iput-object p1, p0, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    new-instance p1, Lj$/time/c;

    .line 42
    .line 43
    iget-object p0, p0, Lj$/time/format/d0;->c:Lj$/time/chrono/a;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "ChronoLocalDate must use the effective parsed chronology: "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_3
    :goto_0
    return-void
.end method
