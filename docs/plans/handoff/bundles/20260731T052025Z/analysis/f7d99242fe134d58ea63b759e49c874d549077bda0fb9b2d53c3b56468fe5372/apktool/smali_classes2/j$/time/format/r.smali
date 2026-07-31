.class public final Lj$/time/format/r;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final a:Lj$/time/temporal/TemporalAccessor;

.field public final b:Lj$/time/format/DateTimeFormatter;

.field public c:I


# direct methods
.method public constructor <init>(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/j;

    .line 5
    .line 6
    iget-object v1, p2, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/ZoneId;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    sget-object v2, Lj$/time/temporal/n;->b:Lj$/desugar/sun/nio/fs/m;

    .line 15
    .line 16
    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lj$/time/chrono/j;

    .line 21
    .line 22
    sget-object v3, Lj$/time/temporal/n;->a:Lj$/desugar/sun/nio/fs/m;

    .line 23
    .line 24
    invoke-interface {p1, v3}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lj$/time/ZoneId;

    .line 29
    .line 30
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    move-object v0, v5

    .line 38
    :cond_1
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    move-object v1, v5

    .line 45
    :cond_2
    if-nez v0, :cond_3

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_3
    if-eqz v0, :cond_4

    .line 52
    .line 53
    move-object v4, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    move-object v4, v2

    .line 56
    :goto_0
    if-eqz v1, :cond_7

    .line 57
    .line 58
    sget-object v6, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    .line 59
    .line 60
    invoke-interface {p1, v6}, Lj$/time/temporal/TemporalAccessor;->d(Lj$/time/temporal/TemporalField;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_5

    .line 65
    .line 66
    sget-object v0, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    .line 67
    .line 68
    invoke-static {v4, v0}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lj$/time/chrono/j;

    .line 73
    .line 74
    invoke-static {p1}, Lj$/time/Instant;->V(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {v0, p1, v1}, Lj$/time/chrono/j;->S(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_5
    invoke-virtual {v1}, Lj$/time/ZoneId;->normalized()Lj$/time/ZoneId;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    instance-of v6, v6, Lj$/time/ZoneOffset;

    .line 89
    .line 90
    if-eqz v6, :cond_7

    .line 91
    .line 92
    sget-object v6, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    .line 93
    .line 94
    invoke-interface {p1, v6}, Lj$/time/temporal/TemporalAccessor;->d(Lj$/time/temporal/TemporalField;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_7

    .line 99
    .line 100
    invoke-interface {p1, v6}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/TemporalField;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v1}, Lj$/time/ZoneId;->getRules()Lj$/time/zone/ZoneRules;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    sget-object v8, Lj$/time/Instant;->c:Lj$/time/Instant;

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Lj$/time/zone/ZoneRules;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-ne v6, v7, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    const-string p0, "Unable to apply override zone \'"

    .line 122
    .line 123
    const-string p2, "\' because the temporal object being formatted has a different offset but does not represent an instant: "

    .line 124
    .line 125
    invoke-static {p0, v1, p2, p1}, Lj$/nio/file/j;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    throw v5

    .line 129
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 130
    .line 131
    move-object v3, v1

    .line 132
    :cond_8
    if-eqz v0, :cond_d

    .line 133
    .line 134
    sget-object v1, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    .line 135
    .line 136
    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->d(Lj$/time/temporal/TemporalField;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_9

    .line 141
    .line 142
    invoke-interface {v4, p1}, Lj$/time/chrono/j;->H(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDate;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    goto :goto_4

    .line 147
    :cond_9
    sget-object v1, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    .line 148
    .line 149
    if-ne v0, v1, :cond_a

    .line 150
    .line 151
    if-eqz v2, :cond_d

    .line 152
    .line 153
    :cond_a
    invoke-static {}, Lj$/time/temporal/ChronoField;->values()[Lj$/time/temporal/ChronoField;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    array-length v2, v1

    .line 158
    const/4 v6, 0x0

    .line 159
    :goto_2
    if-ge v6, v2, :cond_d

    .line 160
    .line 161
    aget-object v7, v1, v6

    .line 162
    .line 163
    invoke-virtual {v7}, Lj$/time/temporal/ChronoField;->isDateBased()Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_c

    .line 168
    .line 169
    invoke-interface {p1, v7}, Lj$/time/temporal/TemporalAccessor;->d(Lj$/time/temporal/TemporalField;)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-nez v7, :cond_b

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_b
    const-string p0, "Unable to apply override chronology \'"

    .line 177
    .line 178
    const-string p2, "\' because the temporal object being formatted contains date fields but does not represent a whole date: "

    .line 179
    .line 180
    invoke-static {p0, v0, p2, p1}, Lj$/nio/file/j;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    throw v5

    .line 184
    :cond_c
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_d
    :goto_4
    new-instance v0, Lj$/time/format/q;

    .line 188
    .line 189
    invoke-direct {v0, v5, p1, v4, v3}, Lj$/time/format/q;-><init>(Lj$/time/chrono/ChronoLocalDate;Lj$/time/temporal/TemporalAccessor;Lj$/time/chrono/j;Lj$/time/ZoneId;)V

    .line 190
    .line 191
    .line 192
    move-object p1, v0

    .line 193
    :goto_5
    iput-object p1, p0, Lj$/time/format/r;->a:Lj$/time/temporal/TemporalAccessor;

    .line 194
    .line 195
    iput-object p2, p0, Lj$/time/format/r;->b:Lj$/time/format/DateTimeFormatter;

    .line 196
    .line 197
    return-void
.end method


# virtual methods
.method public final a(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;
    .locals 1

    .line 1
    iget v0, p0, Lj$/time/format/r;->c:I

    .line 2
    .line 3
    iget-object p0, p0, Lj$/time/format/r;->a:Lj$/time/temporal/TemporalAccessor;

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->d(Lj$/time/temporal/TemporalField;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->J(Lj$/time/temporal/TemporalField;)J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/format/r;->a:Lj$/time/temporal/TemporalAccessor;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
