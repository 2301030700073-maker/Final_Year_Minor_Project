.class public abstract Lj$/time/chrono/a;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lj$/util/concurrent/ConcurrentHashMap;

.field public static final b:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj$/time/chrono/a;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lj$/time/chrono/a;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/Locale;

    .line 16
    .line 17
    const-string v1, "ja"

    .line 18
    .line 19
    const-string v2, "JP"

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f(Ljava/util/Map;Lj$/time/temporal/a;J)V
    .locals 3

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Long;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    cmp-long v1, v1, p2

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lj$/time/c;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Conflict found: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " differs from "

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static v(Ljava/lang/String;)Lj$/time/chrono/a;
    .locals 4

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :goto_0
    sget-object v0, Lj$/time/chrono/a;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lj$/time/chrono/a;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    sget-object v1, Lj$/time/chrono/a;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lj$/time/chrono/a;

    .line 23
    .line 24
    :cond_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    const-string v1, "ISO"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    sget-object v0, Lj$/time/chrono/l;->l:Lj$/time/chrono/l;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const-string v2, "Hijrah-umalqura"

    .line 41
    .line 42
    invoke-static {v0, v2}, Lj$/time/chrono/a;->y(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/a;

    .line 43
    .line 44
    .line 45
    sget-object v0, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string v2, "Japanese"

    .line 51
    .line 52
    invoke-static {v0, v2}, Lj$/time/chrono/a;->y(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/a;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lj$/time/chrono/x;->c:Lj$/time/chrono/x;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string v2, "Minguo"

    .line 61
    .line 62
    invoke-static {v0, v2}, Lj$/time/chrono/a;->y(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/a;

    .line 63
    .line 64
    .line 65
    sget-object v0, Lj$/time/chrono/d0;->c:Lj$/time/chrono/d0;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v2, "ThaiBuddhist"

    .line 71
    .line 72
    invoke-static {v0, v2}, Lj$/time/chrono/a;->y(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/a;

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    :try_start_0
    new-array v0, v0, [Lj$/time/chrono/a;

    .line 77
    .line 78
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lj$/time/chrono/a;

    .line 97
    .line 98
    invoke-virtual {v2}, Lj$/time/chrono/a;->getId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_2

    .line 107
    .line 108
    invoke-virtual {v2}, Lj$/time/chrono/a;->getId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v2, v3}, Lj$/time/chrono/a;->y(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/a;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    sget-object v0, Lj$/time/chrono/p;->c:Lj$/time/chrono/p;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Lj$/time/chrono/a;->y(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/a;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    new-instance v0, Ljava/util/ServiceConfigurationError;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1, p0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_4
    const-class v0, Lj$/time/chrono/a;

    .line 137
    .line 138
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_7

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Lj$/time/chrono/a;

    .line 157
    .line 158
    invoke-virtual {v1}, Lj$/time/chrono/a;->getId()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-nez v2, :cond_6

    .line 167
    .line 168
    invoke-virtual {v1}, Lj$/time/chrono/a;->getCalendarType()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_5

    .line 177
    .line 178
    :cond_6
    return-object v1

    .line 179
    :cond_7
    const-string v0, "Unknown chronology: "

    .line 180
    .line 181
    invoke-static {p0, v0}, Lj$/time/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/4 p0, 0x0

    .line 185
    return-object p0
.end method

.method public static y(Lj$/time/chrono/a;Ljava/lang/String;)Lj$/time/chrono/a;
    .locals 2

    .line 1
    sget-object v0, Lj$/time/chrono/a;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lj$/time/chrono/a;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lj$/time/chrono/a;->getCalendarType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lj$/time/chrono/a;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {v1, v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object p1
.end method

.method public static z(Lj$/time/chrono/ChronoLocalDate;JJJ)Lj$/time/chrono/ChronoLocalDate;
    .locals 4

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, v0}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 8
    .line 9
    invoke-interface {p0, p3, p4, p1}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-wide/16 p2, 0x7

    .line 14
    .line 15
    cmp-long p4, p5, p2

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    if-lez p4, :cond_0

    .line 20
    .line 21
    sub-long/2addr p5, v0

    .line 22
    div-long v2, p5, p2

    .line 23
    .line 24
    invoke-interface {p0, v2, v3, p1}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    rem-long/2addr p5, p2

    .line 29
    :goto_0
    add-long/2addr p5, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    cmp-long p4, p5, v0

    .line 32
    .line 33
    if-gez p4, :cond_1

    .line 34
    .line 35
    invoke-static {p5, p6, p2, p3}, Lj$/time/a;->V(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    div-long/2addr v2, p2

    .line 40
    invoke-interface {p0, v2, v3, p1}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-wide/16 v2, 0x6

    .line 45
    .line 46
    add-long/2addr p5, v2

    .line 47
    rem-long/2addr p5, p2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    long-to-int p1, p5

    .line 50
    invoke-static {p1}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lj$/time/DayOfWeek;->getValue()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    new-instance p2, Lj$/time/temporal/l;

    .line 59
    .line 60
    const/4 p3, 0x1

    .line 61
    invoke-direct {p2, p1, p3}, Lj$/time/temporal/l;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, p2}, Lj$/time/chrono/ChronoLocalDate;->n(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method


# virtual methods
.method public A(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/ChronoLocalDate;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/a;->i(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lj$/time/chrono/a;->B(Ljava/util/Map;Lj$/time/format/e0;)V

    .line 4
    invoke-virtual/range {p0 .. p2}, Lj$/time/chrono/a;->D(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    .line 5
    :cond_1
    sget-object v3, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    .line 6
    sget-object v4, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const-wide/16 v8, 0x1

    if-eqz v6, :cond_a

    .line 7
    sget-object v6, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual/range {p0 .. p2}, Lj$/time/chrono/a;->C(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    sget-object v6, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 10
    sget-object v10, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "Strict mode rejected resolved date as it is in a different month"

    if-eqz v11, :cond_6

    .line 11
    invoke-virtual {v0, v3}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v11

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14, v3}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v3

    .line 12
    sget-object v11, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    if-ne v2, v11, :cond_3

    .line 13
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v4

    .line 14
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v11

    .line 15
    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v1

    .line 16
    invoke-virtual {v0, v3, v7, v7}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v4, v5, v3}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v11, v12, v3}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v1, v2, v3}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 17
    :cond_3
    invoke-virtual {v0, v4}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v8

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14, v4}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v8

    .line 18
    invoke-virtual {v0, v6}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v9

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14, v6}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v6

    .line 19
    invoke-virtual {v0, v10}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v9

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14, v10}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v1

    .line 20
    invoke-virtual {v0, v3, v8, v7}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x7

    sub-int/2addr v1, v7

    add-int/2addr v1, v6

    int-to-long v6, v1

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v6, v7, v1}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 21
    sget-object v1, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    if-ne v2, v1, :cond_5

    invoke-interface {v0, v4}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    move-result v1

    if-ne v1, v8, :cond_4

    goto :goto_0

    .line 22
    :cond_4
    invoke-static {v12}, Lj$/time/h;->k(Ljava/lang/String;)V

    return-object v5

    :cond_5
    :goto_0
    return-object v0

    .line 23
    :cond_6
    sget-object v10, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 24
    invoke-virtual {v0, v3}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v11

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14, v3}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v3

    .line 25
    sget-object v11, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    if-ne v2, v11, :cond_7

    .line 26
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v12

    .line 27
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v14

    .line 28
    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v16

    .line 29
    invoke-virtual {v0, v3, v7, v7}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v11

    invoke-static/range {v11 .. v17}, Lj$/time/chrono/a;->z(Lj$/time/chrono/ChronoLocalDate;JJJ)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 30
    :cond_7
    invoke-virtual {v0, v4}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v8

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14, v4}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v8

    .line 31
    invoke-virtual {v0, v6}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v9

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14, v6}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v6

    .line 32
    invoke-virtual {v0, v10}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v9

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14, v10}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v1

    .line 33
    invoke-virtual {v0, v3, v8, v7}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x7

    int-to-long v9, v6

    sget-object v3, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v9, v10, v3}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-static {v1}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lj$/time/DayOfWeek;->getValue()I

    move-result v1

    .line 35
    new-instance v3, Lj$/time/temporal/l;

    invoke-direct {v3, v1, v7}, Lj$/time/temporal/l;-><init>(II)V

    .line 36
    invoke-interface {v0, v3}, Lj$/time/chrono/ChronoLocalDate;->n(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 37
    sget-object v1, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    if-ne v2, v1, :cond_9

    invoke-interface {v0, v4}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    move-result v1

    if-ne v1, v8, :cond_8

    goto :goto_1

    .line 38
    :cond_8
    invoke-static {v12}, Lj$/time/h;->k(Ljava/lang/String;)V

    return-object v5

    :cond_9
    :goto_1
    return-object v0

    .line 39
    :cond_a
    sget-object v4, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 40
    invoke-virtual {v0, v3}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v5

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11, v3}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v3

    .line 41
    sget-object v5, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    if-ne v2, v5, :cond_b

    .line 42
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v1

    .line 43
    invoke-virtual {v0, v3, v7}, Lj$/time/chrono/a;->o(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v3, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v1, v2, v3}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 44
    :cond_b
    invoke-virtual {v0, v4}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v2

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v1

    .line 45
    invoke-virtual {v0, v3, v1}, Lj$/time/chrono/a;->o(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 46
    :cond_c
    sget-object v4, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 47
    sget-object v6, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "Strict mode rejected resolved date as it is in a different year"

    if-eqz v10, :cond_10

    .line 48
    invoke-virtual {v0, v3}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v10

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13, v3}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v10

    .line 49
    sget-object v12, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    if-ne v2, v12, :cond_d

    .line 50
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v2

    .line 51
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v4

    .line 52
    invoke-virtual {v0, v10, v7}, Lj$/time/chrono/a;->o(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v4, v5, v1}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 53
    :cond_d
    invoke-virtual {v0, v4}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v8

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13, v4}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v4

    .line 54
    invoke-virtual {v0, v6}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v8

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13, v6}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v1

    .line 55
    invoke-virtual {v0, v10, v7}, Lj$/time/chrono/a;->o(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sub-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x7

    sub-int/2addr v1, v7

    add-int/2addr v1, v4

    int-to-long v6, v1

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v6, v7, v1}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 56
    sget-object v1, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    if-ne v2, v1, :cond_f

    invoke-interface {v0, v3}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    move-result v1

    if-ne v1, v10, :cond_e

    goto :goto_2

    .line 57
    :cond_e
    invoke-static {v11}, Lj$/time/h;->k(Ljava/lang/String;)V

    return-object v5

    :cond_f
    :goto_2
    return-object v0

    .line 58
    :cond_10
    sget-object v6, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 59
    invoke-virtual {v0, v3}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v10

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13, v3}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v10

    .line 60
    sget-object v12, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    if-ne v2, v12, :cond_11

    .line 61
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v14

    .line 62
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v8, v9}, Lj$/time/a;->V(JJ)J

    move-result-wide v16

    .line 63
    invoke-virtual {v0, v10, v7}, Lj$/time/chrono/a;->o(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-static/range {v11 .. v17}, Lj$/time/chrono/a;->z(Lj$/time/chrono/ChronoLocalDate;JJJ)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 64
    :cond_11
    invoke-virtual {v0, v4}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v8

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13, v4}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v4

    .line 65
    invoke-virtual {v0, v6}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    move-result-object v8

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13, v6}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    move-result v1

    .line 66
    invoke-virtual {v0, v10, v7}, Lj$/time/chrono/a;->o(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sub-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x7

    int-to-long v8, v4

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v8, v9, v4}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-static {v1}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lj$/time/DayOfWeek;->getValue()I

    move-result v1

    .line 68
    new-instance v4, Lj$/time/temporal/l;

    invoke-direct {v4, v1, v7}, Lj$/time/temporal/l;-><init>(II)V

    .line 69
    invoke-interface {v0, v4}, Lj$/time/chrono/ChronoLocalDate;->n(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 70
    sget-object v1, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    if-ne v2, v1, :cond_13

    invoke-interface {v0, v3}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    move-result v1

    if-ne v1, v10, :cond_12

    goto :goto_3

    .line 71
    :cond_12
    invoke-static {v11}, Lj$/time/h;->k(Ljava/lang/String;)V

    return-object v5

    :cond_13
    :goto_3
    return-object v0

    :cond_14
    return-object v5
.end method

.method public B(Ljava/util/Map;Lj$/time/format/e0;)V
    .locals 4

    .line 1
    sget-object v0, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Long;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    sget-object v2, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 12
    .line 13
    if-eq p2, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {v0, v2, v3}, Lj$/time/temporal/a;->o(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/a;->k()Lj$/time/chrono/ChronoLocalDate;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object p2, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 27
    .line 28
    const-wide/16 v2, 0x1

    .line 29
    .line 30
    invoke-interface {p0, v2, v3, p2}, Lj$/time/chrono/ChronoLocalDate;->a(JLj$/time/temporal/n;)Lj$/time/chrono/ChronoLocalDate;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-interface {p0, v1, v2, v0}, Lj$/time/chrono/ChronoLocalDate;->a(JLj$/time/temporal/n;)Lj$/time/chrono/ChronoLocalDate;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object p2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 43
    .line 44
    invoke-interface {p0, p2}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-long v0, v0

    .line 49
    invoke-static {p1, p2, v0, v1}, Lj$/time/chrono/a;->f(Ljava/util/Map;Lj$/time/temporal/a;J)V

    .line 50
    .line 51
    .line 52
    sget-object p2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 53
    .line 54
    invoke-interface {p0, p2}, Lj$/time/temporal/TemporalAccessor;->f(Lj$/time/temporal/n;)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    int-to-long v0, p0

    .line 59
    invoke-static {p1, p2, v0, v1}, Lj$/time/chrono/a;->f(Ljava/util/Map;Lj$/time/temporal/a;J)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public C(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/ChronoLocalDate;
    .locals 7

    .line 1
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {v1, v2, v3, v0}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sget-object v1, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne p2, v1, :cond_0

    .line 25
    .line 26
    sget-object p2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 27
    .line 28
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    const-wide/16 v5, 0x1

    .line 39
    .line 40
    invoke-static {v3, v4, v5, v6}, Lj$/time/a;->V(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    sget-object p2, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 45
    .line 46
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    invoke-static {p1, p2, v5, v6}, Lj$/time/a;->V(JJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide p1

    .line 60
    invoke-virtual {p0, v0, v2, v2}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 65
    .line 66
    invoke-interface {p0, v3, v4, v0}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 71
    .line 72
    invoke-interface {p0, p1, p2, v0}, Lj$/time/chrono/ChronoLocalDate;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_0
    sget-object v1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/lang/Long;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-virtual {v3, v4, v5, v1}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    sget-object v3, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 98
    .line 99
    invoke-virtual {p0, v3}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Ljava/lang/Long;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    invoke-virtual {v4, v5, v6, v3}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    sget-object v3, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 118
    .line 119
    if-ne p2, v3, :cond_1

    .line 120
    .line 121
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    .line 122
    .line 123
    .line 124
    move-result-object p0
    :try_end_0
    .catch Lj$/time/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-object p0

    .line 126
    :catch_0
    invoke-virtual {p0, v0, v1, v2}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    new-instance p1, Lj$/time/f;

    .line 131
    .line 132
    const/4 p2, 0x4

    .line 133
    invoke-direct {p1, p2}, Lj$/time/f;-><init>(I)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p0, p1}, Lj$/time/chrono/ChronoLocalDate;->n(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :cond_1
    invoke-virtual {p0, v0, v1, p1}, Lj$/time/chrono/a;->g(III)Lj$/time/chrono/ChronoLocalDate;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0
.end method

.method public D(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/ChronoLocalDate;
    .locals 7

    .line 1
    sget-object v0, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Long;

    .line 8
    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    sget-object v2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    .line 12
    .line 13
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/Long;

    .line 18
    .line 19
    sget-object v4, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 20
    .line 21
    if-eq p2, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    invoke-virtual {v4, v5, v6, v0}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-static {v4, v5}, Lj$/time/a;->O(J)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    :goto_0
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    invoke-virtual {p2, v0, v1, v2}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p0, p2}, Lj$/time/chrono/a;->q(I)Lj$/time/chrono/j;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 63
    .line 64
    invoke-virtual {p0, p2, v4}, Lj$/time/chrono/a;->w(Lj$/time/chrono/j;I)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    int-to-long v1, p0

    .line 69
    invoke-static {p1, v0, v1, v2}, Lj$/time/chrono/a;->f(Ljava/util/Map;Lj$/time/temporal/a;J)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 74
    .line 75
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v5, 0x1

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Long;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    invoke-virtual {p2, v0, v1, v2}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-virtual {p0, p2, v5}, Lj$/time/chrono/a;->o(II)Lj$/time/chrono/ChronoLocalDate;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-interface {p2}, Lj$/time/chrono/ChronoLocalDate;->getEra()Lj$/time/chrono/j;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p0, p2, v4}, Lj$/time/chrono/a;->w(Lj$/time/chrono/j;I)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    int-to-long v0, p0

    .line 113
    invoke-static {p1, v2, v0, v1}, Lj$/time/chrono/a;->f(Ljava/util/Map;Lj$/time/temporal/a;J)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    sget-object v3, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 118
    .line 119
    if-ne p2, v3, :cond_3

    .line 120
    .line 121
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p0}, Lj$/time/chrono/a;->eras()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    int-to-long v0, v4

    .line 136
    invoke-static {p1, v2, v0, v1}, Lj$/time/chrono/a;->f(Ljava/util/Map;Lj$/time/temporal/a;J)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    sub-int/2addr v0, v5

    .line 145
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    check-cast p2, Lj$/time/chrono/j;

    .line 150
    .line 151
    invoke-virtual {p0, p2, v4}, Lj$/time/chrono/a;->w(Lj$/time/chrono/j;I)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    int-to-long v0, p0

    .line 156
    invoke-static {p1, v2, v0, v1}, Lj$/time/chrono/a;->f(Ljava/util/Map;Lj$/time/temporal/a;J)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    sget-object p2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    .line 161
    .line 162
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_6

    .line 167
    .line 168
    invoke-virtual {p0, p2}, Lj$/time/chrono/a;->x(Lj$/time/temporal/a;)Lj$/time/temporal/q;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Ljava/lang/Long;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 179
    .line 180
    .line 181
    move-result-wide v0

    .line 182
    invoke-virtual {p0, v0, v1, p2}, Lj$/time/temporal/q;->b(JLj$/time/temporal/n;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 186
    return-object p0
.end method

.method public abstract E(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
.end method

.method public F(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lj$/time/ZoneId;->u(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneId;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Lj$/time/c; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-static {p1}, Lj$/time/Instant;->v(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0, v1, v0}, Lj$/time/chrono/a;->E(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_1
    .catch Lj$/time/c; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    :try_start_2
    invoke-virtual {p0, p1}, Lj$/time/chrono/a;->u(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p0, v1}, Lj$/time/chrono/e;->u(Lj$/time/chrono/a;Lj$/time/temporal/Temporal;)Lj$/time/chrono/e;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v0, v1, p0}, Lj$/time/chrono/i;->u(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/e;)Lj$/time/chrono/i;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_2
    .catch Lj$/time/c; {:try_start_2 .. :try_end_2} :catch_1

    .line 27
    return-object p0

    .line 28
    :catch_1
    move-exception p0

    .line 29
    new-instance v0, Lj$/time/c;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lj$/time/chrono/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/time/chrono/a;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Lj$/time/chrono/a;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lj$/time/chrono/a;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Lj$/time/chrono/a;

    .line 9
    .line 10
    invoke-virtual {p0}, Lj$/time/chrono/a;->getId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p1}, Lj$/time/chrono/a;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public abstract eras()Ljava/util/List;
.end method

.method public abstract g(III)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract getCalendarType()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract h(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lj$/time/chrono/a;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    xor-int/2addr p0, v0

    .line 18
    return p0
.end method

.method public abstract i(J)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract isLeapYear(J)Z
.end method

.method public abstract synthetic k()Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract o(II)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract q(I)Lj$/time/chrono/j;
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj$/time/chrono/a;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public u(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lj$/time/chrono/a;->h(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Lj$/time/LocalTime;->w(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalTime;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p0, v0}, Lj$/time/chrono/ChronoLocalDate;->r(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Lj$/time/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Lj$/time/c;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public abstract w(Lj$/time/chrono/j;I)I
.end method

.method public abstract x(Lj$/time/temporal/a;)Lj$/time/temporal/q;
.end method
