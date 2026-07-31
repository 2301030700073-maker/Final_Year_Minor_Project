.class public final Lj$/time/format/s;
.super Lj$/time/format/j;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final g:C

.field public final h:I


# direct methods
.method public constructor <init>(CIIII)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/n;IILj$/time/format/f0;I)V

    .line 9
    .line 10
    .line 11
    iput-char p1, v0, Lj$/time/format/s;->g:C

    .line 12
    .line 13
    iput p2, v0, Lj$/time/format/s;->h:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
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
    new-instance v2, Lj$/time/format/s;

    .line 8
    .line 9
    iget v6, p0, Lj$/time/format/j;->c:I

    .line 10
    .line 11
    const/4 v7, -0x1

    .line 12
    iget-char v3, p0, Lj$/time/format/s;->g:C

    .line 13
    .line 14
    iget v4, p0, Lj$/time/format/s;->h:I

    .line 15
    .line 16
    iget v5, p0, Lj$/time/format/j;->b:I

    .line 17
    .line 18
    invoke-direct/range {v2 .. v7}, Lj$/time/format/s;-><init>(CIIII)V

    .line 19
    .line 20
    .line 21
    return-object v2
.end method

.method public final e(I)Lj$/time/format/j;
    .locals 6

    .line 1
    new-instance v0, Lj$/time/format/s;

    .line 2
    .line 3
    iget v1, p0, Lj$/time/format/j;->e:I

    .line 4
    .line 5
    add-int v5, v1, p1

    .line 6
    .line 7
    iget-char v1, p0, Lj$/time/format/s;->g:C

    .line 8
    .line 9
    iget v2, p0, Lj$/time/format/s;->h:I

    .line 10
    .line 11
    iget v3, p0, Lj$/time/format/j;->b:I

    .line 12
    .line 13
    iget v4, p0, Lj$/time/format/j;->c:I

    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lj$/time/format/s;-><init>(CIIII)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final f(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    .line 2
    .line 3
    iget-object v0, v0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lj$/time/format/s;->h(Ljava/util/Locale;)Lj$/time/format/j;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lj$/time/format/j;->f(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final g(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1
    iget-object v0, p1, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    .line 2
    .line 3
    iget-object v0, v0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lj$/time/format/s;->h(Ljava/util/Locale;)Lj$/time/format/j;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/format/j;->g(Lj$/time/format/w;Ljava/lang/CharSequence;I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final h(Ljava/util/Locale;)Lj$/time/format/j;
    .locals 6

    .line 1
    sget-object v0, Lj$/time/temporal/s;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const-string v0, "locale"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sget-object v1, Lj$/time/DayOfWeek;->SUNDAY:Lj$/time/DayOfWeek;

    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    int-to-long v2, v0

    .line 34
    const-wide/16 v4, 0x7

    .line 35
    .line 36
    rem-long/2addr v2, v4

    .line 37
    long-to-int v0, v2

    .line 38
    sget-object v2, Lj$/time/DayOfWeek;->a:[Lj$/time/DayOfWeek;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/lit8 v0, v0, 0x7

    .line 45
    .line 46
    add-int/2addr v0, v1

    .line 47
    rem-int/lit8 v0, v0, 0x7

    .line 48
    .line 49
    aget-object v0, v2, v0

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {v0, p1}, Lj$/time/temporal/s;->a(Lj$/time/DayOfWeek;I)Lj$/time/temporal/s;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/16 v0, 0x57

    .line 60
    .line 61
    iget-char v1, p0, Lj$/time/format/s;->g:C

    .line 62
    .line 63
    if-eq v1, v0, :cond_5

    .line 64
    .line 65
    const/16 v0, 0x59

    .line 66
    .line 67
    if-eq v1, v0, :cond_2

    .line 68
    .line 69
    const/16 v0, 0x63

    .line 70
    .line 71
    if-eq v1, v0, :cond_1

    .line 72
    .line 73
    const/16 v0, 0x65

    .line 74
    .line 75
    if-eq v1, v0, :cond_1

    .line 76
    .line 77
    const/16 v0, 0x77

    .line 78
    .line 79
    if-ne v1, v0, :cond_0

    .line 80
    .line 81
    iget-object p1, p1, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    .line 82
    .line 83
    :goto_0
    move-object v1, p1

    .line 84
    goto :goto_3

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    const-string p1, "unreachable"

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_1
    iget-object p1, p1, Lj$/time/temporal/s;->c:Lj$/time/temporal/r;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p1, Lj$/time/temporal/s;->f:Lj$/time/temporal/r;

    .line 97
    .line 98
    const/4 p1, 0x2

    .line 99
    iget v2, p0, Lj$/time/format/s;->h:I

    .line 100
    .line 101
    if-ne v2, p1, :cond_3

    .line 102
    .line 103
    new-instance v0, Lj$/time/format/p;

    .line 104
    .line 105
    sget-object v4, Lj$/time/format/p;->h:Lj$/time/LocalDate;

    .line 106
    .line 107
    iget v5, p0, Lj$/time/format/j;->e:I

    .line 108
    .line 109
    const/4 v2, 0x2

    .line 110
    const/4 v3, 0x2

    .line 111
    invoke-direct/range {v0 .. v5}, Lj$/time/format/p;-><init>(Lj$/time/temporal/n;IILj$/time/chrono/ChronoLocalDate;I)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_3
    new-instance v0, Lj$/time/format/j;

    .line 116
    .line 117
    const/4 p1, 0x4

    .line 118
    if-ge v2, p1, :cond_4

    .line 119
    .line 120
    sget-object p1, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    .line 121
    .line 122
    :goto_1
    move-object v4, p1

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    sget-object p1, Lj$/time/format/f0;->EXCEEDS_PAD:Lj$/time/format/f0;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_2
    iget v5, p0, Lj$/time/format/j;->e:I

    .line 128
    .line 129
    const/16 v3, 0x13

    .line 130
    .line 131
    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/n;IILj$/time/format/f0;I)V

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_5
    iget-object p1, p1, Lj$/time/temporal/s;->d:Lj$/time/temporal/r;

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :goto_3
    new-instance v0, Lj$/time/format/j;

    .line 139
    .line 140
    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 141
    .line 142
    iget v5, p0, Lj$/time/format/j;->e:I

    .line 143
    .line 144
    iget v2, p0, Lj$/time/format/j;->b:I

    .line 145
    .line 146
    iget v3, p0, Lj$/time/format/j;->c:I

    .line 147
    .line 148
    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/n;IILj$/time/format/f0;I)V

    .line 149
    .line 150
    .line 151
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Localized("

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x59

    .line 14
    .line 15
    iget v2, p0, Lj$/time/format/s;->h:I

    .line 16
    .line 17
    iget-char p0, p0, Lj$/time/format/s;->g:C

    .line 18
    .line 19
    if-ne p0, v1, :cond_3

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    if-ne v2, p0, :cond_0

    .line 23
    .line 24
    const-string p0, "WeekBasedYear"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const/4 p0, 0x2

    .line 31
    if-ne v2, p0, :cond_1

    .line 32
    .line 33
    const-string p0, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    const-string p0, "WeekBasedYear,"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, ",19,"

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x4

    .line 53
    if-ge v2, p0, :cond_2

    .line 54
    .line 55
    sget-object p0, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-object p0, Lj$/time/format/f0;->EXCEEDS_PAD:Lj$/time/format/f0;

    .line 59
    .line 60
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const/16 v1, 0x57

    .line 65
    .line 66
    if-eq p0, v1, :cond_6

    .line 67
    .line 68
    const/16 v1, 0x63

    .line 69
    .line 70
    if-eq p0, v1, :cond_5

    .line 71
    .line 72
    const/16 v1, 0x65

    .line 73
    .line 74
    if-eq p0, v1, :cond_5

    .line 75
    .line 76
    const/16 v1, 0x77

    .line 77
    .line 78
    if-eq p0, v1, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const-string p0, "WeekOfWeekBasedYear"

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const-string p0, "DayOfWeek"

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    const-string p0, "WeekOfMonth"

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :goto_1
    const-string p0, ","

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :goto_2
    const-string p0, ")"

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method
