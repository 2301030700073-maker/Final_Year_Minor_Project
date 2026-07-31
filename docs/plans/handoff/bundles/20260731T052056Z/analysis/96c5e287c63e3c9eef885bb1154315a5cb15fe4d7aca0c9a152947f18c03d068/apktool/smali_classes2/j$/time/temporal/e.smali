.class public final enum Lj$/time/temporal/e;
.super Lj$/time/temporal/g;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "WEEK_OF_WEEK_BASED_YEAR"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 0

    .line 1
    sget-object p0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->c(Lj$/time/temporal/n;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lj$/time/temporal/i;->a:Lj$/time/temporal/g;

    .line 10
    .line 11
    invoke-static {p1}, Lj$/time/a;->N(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/a;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lj$/time/chrono/p;->c:Lj$/time/chrono/p;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final g(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/q;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lj$/time/temporal/e;->f(Lj$/time/temporal/TemporalAccessor;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lj$/time/LocalDate;->w(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lj$/time/temporal/g;->q(Lj$/time/LocalDate;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Lj$/time/temporal/g;->u(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-long p0, p0

    .line 20
    const-wide/16 v0, 0x1

    .line 21
    .line 22
    invoke-static {v0, v1, p0, p1}, Lj$/time/temporal/q;->f(JJ)Lj$/time/temporal/q;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance p0, Lj$/time/temporal/p;

    .line 28
    .line 29
    const-string p1, "Unsupported field: WeekOfWeekBasedYear"

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final h(Ljava/util/Map;Lj$/time/format/d0;Lj$/time/format/e0;)Lj$/time/temporal/TemporalAccessor;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    sget-object v2, Lj$/time/temporal/g;->WEEK_BASED_YEAR:Lj$/time/temporal/g;

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    check-cast v3, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ljava/lang/Long;

    .line 16
    .line 17
    sget-object v5, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 18
    .line 19
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Ljava/lang/Long;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v4, :cond_8

    .line 27
    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    invoke-interface {v2}, Lj$/time/temporal/n;->range()Lj$/time/temporal/q;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    invoke-virtual {v8, v9, v10, v2}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    sget-object v8, Lj$/time/temporal/g;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/g;

    .line 45
    .line 46
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v8

    .line 56
    sget-object v10, Lj$/time/temporal/i;->a:Lj$/time/temporal/g;

    .line 57
    .line 58
    invoke-static/range {p2 .. p2}, Lj$/time/a;->N(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/a;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    sget-object v11, Lj$/time/chrono/p;->c:Lj$/time/chrono/p;

    .line 63
    .line 64
    invoke-virtual {v10, v11}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_7

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    const/4 v10, 0x4

    .line 72
    invoke-static {v4, v7, v10}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    sget-object v7, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 77
    .line 78
    const-wide/16 v10, 0x1

    .line 79
    .line 80
    if-ne v1, v7, :cond_3

    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v6

    .line 86
    const-wide/16 v12, 0x7

    .line 87
    .line 88
    cmp-long v1, v6, v12

    .line 89
    .line 90
    if-lez v1, :cond_1

    .line 91
    .line 92
    sub-long/2addr v6, v10

    .line 93
    div-long v14, v6, v12

    .line 94
    .line 95
    invoke-virtual {v4, v14, v15}, Lj$/time/LocalDate;->F(J)Lj$/time/LocalDate;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    rem-long/2addr v6, v12

    .line 100
    :goto_0
    add-long/2addr v6, v10

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    cmp-long v1, v6, v10

    .line 103
    .line 104
    if-gez v1, :cond_2

    .line 105
    .line 106
    invoke-static {v6, v7, v12, v13}, Lj$/time/a;->V(JJ)J

    .line 107
    .line 108
    .line 109
    move-result-wide v14

    .line 110
    div-long/2addr v14, v12

    .line 111
    invoke-virtual {v4, v14, v15}, Lj$/time/LocalDate;->F(J)Lj$/time/LocalDate;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-wide/16 v14, 0x6

    .line 116
    .line 117
    add-long/2addr v6, v14

    .line 118
    rem-long/2addr v6, v12

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    :goto_1
    invoke-static {v8, v9, v10, v11}, Lj$/time/a;->V(JJ)J

    .line 121
    .line 122
    .line 123
    move-result-wide v8

    .line 124
    invoke-virtual {v4, v8, v9}, Lj$/time/LocalDate;->F(J)Lj$/time/LocalDate;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, v6, v7, v5}, Lj$/time/LocalDate;->I(JLj$/time/temporal/n;)Lj$/time/LocalDate;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 134
    .line 135
    .line 136
    move-result-wide v6

    .line 137
    iget-object v12, v5, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    .line 138
    .line 139
    invoke-virtual {v12, v6, v7, v5}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    cmp-long v7, v8, v10

    .line 144
    .line 145
    if-ltz v7, :cond_4

    .line 146
    .line 147
    const-wide/16 v12, 0x34

    .line 148
    .line 149
    cmp-long v7, v8, v12

    .line 150
    .line 151
    if-lez v7, :cond_6

    .line 152
    .line 153
    :cond_4
    sget-object v7, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 154
    .line 155
    if-ne v1, v7, :cond_5

    .line 156
    .line 157
    invoke-static {v4}, Lj$/time/temporal/g;->q(Lj$/time/LocalDate;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-static {v1}, Lj$/time/temporal/g;->u(I)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    int-to-long v12, v1

    .line 166
    invoke-static {v10, v11, v12, v13}, Lj$/time/temporal/q;->f(JJ)Lj$/time/temporal/q;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1, v8, v9, v0}, Lj$/time/temporal/q;->b(JLj$/time/temporal/n;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual {v0}, Lj$/time/temporal/e;->range()Lj$/time/temporal/q;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1, v8, v9, v0}, Lj$/time/temporal/q;->b(JLj$/time/temporal/n;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    :goto_2
    sub-long/2addr v8, v10

    .line 182
    invoke-virtual {v4, v8, v9}, Lj$/time/LocalDate;->F(J)Lj$/time/LocalDate;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    int-to-long v6, v6

    .line 187
    invoke-virtual {v1, v6, v7, v5}, Lj$/time/LocalDate;->I(JLj$/time/temporal/n;)Lj$/time/LocalDate;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    :goto_3
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    return-object v1

    .line 201
    :cond_7
    const-string v0, "Resolve requires IsoChronology"

    .line 202
    .line 203
    invoke-static {v0}, Lj$/time/h;->k(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_8
    :goto_4
    return-object v7
.end method

.method public final i(Lj$/time/temporal/TemporalAccessor;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lj$/time/temporal/e;->f(Lj$/time/temporal/TemporalAccessor;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lj$/time/LocalDate;->w(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lj$/time/temporal/g;->o(Lj$/time/LocalDate;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    int-to-long p0, p0

    .line 16
    return-wide p0

    .line 17
    :cond_0
    new-instance p0, Lj$/time/temporal/p;

    .line 18
    .line 19
    const-string p1, "Unsupported field: WeekOfWeekBasedYear"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final k(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj$/time/temporal/e;->range()Lj$/time/temporal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/q;->b(JLj$/time/temporal/n;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lj$/time/temporal/e;->i(Lj$/time/temporal/TemporalAccessor;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p2, p3, v0, v1}, Lj$/time/a;->V(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p2

    .line 16
    sget-object p0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 17
    .line 18
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/Temporal;->b(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final range()Lj$/time/temporal/q;
    .locals 6

    .line 1
    const-wide/16 v2, 0x34

    .line 2
    .line 3
    const-wide/16 v4, 0x35

    .line 4
    .line 5
    const-wide/16 v0, 0x1

    .line 6
    .line 7
    invoke-static/range {v0 .. v5}, Lj$/time/temporal/q;->g(JJJ)Lj$/time/temporal/q;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "WeekOfWeekBasedYear"

    .line 2
    .line 3
    return-object p0
.end method
