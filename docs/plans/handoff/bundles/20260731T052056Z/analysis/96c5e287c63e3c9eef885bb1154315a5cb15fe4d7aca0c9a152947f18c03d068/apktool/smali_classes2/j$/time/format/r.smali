.class public final Lj$/time/format/r;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/time/format/e;


# instance fields
.field public final a:Lj$/time/temporal/n;

.field public final b:Lj$/time/format/TextStyle;

.field public final c:Lj$/time/format/b0;

.field public volatile d:Lj$/time/format/j;


# direct methods
.method public constructor <init>(Lj$/time/temporal/n;Lj$/time/format/TextStyle;Lj$/time/format/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 5
    .line 6
    iput-object p2, p0, Lj$/time/format/r;->b:Lj$/time/format/TextStyle;

    .line 7
    .line 8
    iput-object p3, p0, Lj$/time/format/r;->c:Lj$/time/format/b0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lj$/time/format/y;->a(Lj$/time/temporal/n;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object v2, p1, Lj$/time/format/y;->a:Lj$/time/temporal/TemporalAccessor;

    .line 14
    .line 15
    sget-object v3, Lj$/time/temporal/o;->b:Lj$/time/f;

    .line 16
    .line 17
    invoke-interface {v2, v3}, Lj$/time/temporal/TemporalAccessor;->i(Lj$/time/f;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    move-object v4, v2

    .line 22
    check-cast v4, Lj$/time/chrono/a;

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    sget-object v2, Lj$/time/chrono/p;->c:Lj$/time/chrono/p;

    .line 27
    .line 28
    if-ne v4, v2, :cond_2

    .line 29
    .line 30
    :cond_1
    move-object v2, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v3, p0, Lj$/time/format/r;->c:Lj$/time/format/b0;

    .line 33
    .line 34
    iget-object v5, p0, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    iget-object v8, p0, Lj$/time/format/r;->b:Lj$/time/format/TextStyle;

    .line 41
    .line 42
    iget-object v9, v1, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 43
    .line 44
    invoke-virtual/range {v3 .. v9}, Lj$/time/format/b0;->b(Lj$/time/chrono/a;Lj$/time/temporal/n;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_1

    .line 49
    :goto_0
    iget-object v1, p0, Lj$/time/format/r;->c:Lj$/time/format/b0;

    .line 50
    .line 51
    move-object v3, v2

    .line 52
    iget-object v2, p0, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    move-object v0, v3

    .line 59
    move-wide v3, v4

    .line 60
    iget-object v5, p0, Lj$/time/format/r;->b:Lj$/time/format/TextStyle;

    .line 61
    .line 62
    iget-object v6, v0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 63
    .line 64
    invoke-virtual/range {v1 .. v6}, Lj$/time/format/b0;->c(Lj$/time/temporal/n;JLj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_1
    const/4 v1, 0x1

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    new-instance v0, Lj$/time/format/j;

    .line 76
    .line 77
    iget-object v2, p0, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 78
    .line 79
    const/16 v3, 0x13

    .line 80
    .line 81
    sget-object v4, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    .line 82
    .line 83
    invoke-direct {v0, v2, v1, v3, v4}, Lj$/time/format/j;-><init>(Lj$/time/temporal/n;IILj$/time/format/f0;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    .line 87
    .line 88
    :cond_3
    iget-object p0, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lj$/time/format/j;->f(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    return p0

    .line 95
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    return v1
.end method

.method public final g(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 11

    .line 1
    iget-object v2, p0, Lj$/time/format/r;->c:Lj$/time/format/b0;

    .line 2
    .line 3
    iget-object v7, p0, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ltz p3, :cond_9

    .line 10
    .line 11
    if-gt p3, v3, :cond_9

    .line 12
    .line 13
    iget-boolean v3, p1, Lj$/time/format/w;->c:Z

    .line 14
    .line 15
    iget-object v5, p1, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lj$/time/format/r;->b:Lj$/time/format/TextStyle;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1}, Lj$/time/format/w;->d()Lj$/time/chrono/a;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    if-eqz v8, :cond_2

    .line 28
    .line 29
    sget-object v6, Lj$/time/chrono/p;->c:Lj$/time/chrono/p;

    .line 30
    .line 31
    if-ne v8, v6, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    iget-object v5, v5, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-virtual {v2, v8, v7, v3, v5}, Lj$/time/format/b0;->d(Lj$/time/chrono/a;Lj$/time/temporal/n;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_1
    move-object v9, v2

    .line 41
    goto :goto_3

    .line 42
    :cond_2
    :goto_2
    iget-object v5, v5, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 43
    .line 44
    invoke-virtual {v2, v7, v3, v5}, Lj$/time/format/b0;->e(Lj$/time/temporal/n;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    goto :goto_1

    .line 49
    :goto_3
    if-eqz v9, :cond_7

    .line 50
    .line 51
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v10, v2

    .line 62
    check-cast v10, Ljava/util/Map$Entry;

    .line 63
    .line 64
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/String;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    move-object v1, p1

    .line 76
    move-object v4, p2

    .line 77
    move v5, p3

    .line 78
    invoke-virtual/range {v1 .. v6}, Lj$/time/format/w;->h(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    iget-object v1, p0, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 85
    .line 86
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

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
    move-result-wide v3

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int v5, v0, p3

    .line 101
    .line 102
    move-object v0, p1

    .line 103
    move-wide v2, v3

    .line 104
    move v4, p3

    .line 105
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/w;->g(Lj$/time/temporal/n;JII)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    return v0

    .line 110
    :cond_4
    sget-object v2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    .line 111
    .line 112
    if-ne v7, v2, :cond_6

    .line 113
    .line 114
    iget-boolean v2, p1, Lj$/time/format/w;->c:Z

    .line 115
    .line 116
    if-nez v2, :cond_6

    .line 117
    .line 118
    invoke-virtual {v8}, Lj$/time/chrono/a;->eras()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    move-object v8, v2

    .line 137
    check-cast v8, Lj$/time/chrono/j;

    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const/4 v3, 0x0

    .line 144
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    move-object v1, p1

    .line 149
    move-object v4, p2

    .line 150
    move v5, p3

    .line 151
    invoke-virtual/range {v1 .. v6}, Lj$/time/format/w;->h(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_5

    .line 156
    .line 157
    iget-object v1, p0, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 158
    .line 159
    invoke-interface {v8}, Lj$/time/chrono/j;->getValue()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    int-to-long v3, v0

    .line 164
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    add-int v5, v0, p3

    .line 169
    .line 170
    move-object v0, p1

    .line 171
    move-wide v2, v3

    .line 172
    move v4, p3

    .line 173
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/w;->g(Lj$/time/temporal/n;JII)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    return v0

    .line 178
    :cond_6
    iget-boolean v2, p1, Lj$/time/format/w;->c:Z

    .line 179
    .line 180
    if-eqz v2, :cond_7

    .line 181
    .line 182
    not-int v0, p3

    .line 183
    return v0

    .line 184
    :cond_7
    iget-object v2, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    .line 185
    .line 186
    if-nez v2, :cond_8

    .line 187
    .line 188
    new-instance v2, Lj$/time/format/j;

    .line 189
    .line 190
    iget-object v3, p0, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 191
    .line 192
    const/16 v5, 0x13

    .line 193
    .line 194
    sget-object v6, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    .line 195
    .line 196
    const/4 v7, 0x1

    .line 197
    invoke-direct {v2, v3, v7, v5, v6}, Lj$/time/format/j;-><init>(Lj$/time/temporal/n;IILj$/time/format/f0;)V

    .line 198
    .line 199
    .line 200
    iput-object v2, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    .line 201
    .line 202
    :cond_8
    iget-object v0, p0, Lj$/time/format/r;->d:Lj$/time/format/j;

    .line 203
    .line 204
    invoke-virtual {v0, p1, p2, p3}, Lj$/time/format/j;->g(Lj$/time/format/w;Ljava/lang/CharSequence;I)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    return v0

    .line 209
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 212
    .line 213
    .line 214
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    const-string v2, "Text("

    .line 6
    .line 7
    iget-object v3, p0, Lj$/time/format/r;->b:Lj$/time/format/TextStyle;

    .line 8
    .line 9
    iget-object p0, p0, Lj$/time/format/r;->a:Lj$/time/temporal/n;

    .line 10
    .line 11
    if-ne v3, v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ","

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
