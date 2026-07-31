.class public final Lj$/time/format/o;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/time/format/e;


# instance fields
.field public final a:Lj$/time/temporal/TemporalField;

.field public final b:Lj$/time/format/w;

.field public final c:Lj$/time/format/a;

.field public volatile d:Lj$/time/format/h;


# direct methods
.method public constructor <init>(Lj$/time/temporal/TemporalField;Lj$/time/format/w;Lj$/time/format/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/time/format/o;->a:Lj$/time/temporal/TemporalField;

    .line 5
    .line 6
    iput-object p2, p0, Lj$/time/format/o;->b:Lj$/time/format/w;

    .line 7
    .line 8
    iput-object p3, p0, Lj$/time/format/o;->c:Lj$/time/format/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final k(Lj$/time/format/r;Ljava/lang/StringBuilder;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lj$/time/format/o;->a:Lj$/time/temporal/TemporalField;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lj$/time/format/r;->a(Lj$/time/temporal/TemporalField;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lj$/time/format/r;->b:Lj$/time/format/DateTimeFormatter;

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
    iget-object v2, p1, Lj$/time/format/r;->a:Lj$/time/temporal/TemporalAccessor;

    .line 14
    .line 15
    sget-object v3, Lj$/time/temporal/n;->b:Lj$/desugar/sun/nio/fs/m;

    .line 16
    .line 17
    invoke-interface {v2, v3}, Lj$/time/temporal/TemporalAccessor;->L(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lj$/time/chrono/j;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    sget-object v3, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    .line 26
    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v2, p0, Lj$/time/format/o;->c:Lj$/time/format/a;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    iget-object v0, p0, Lj$/time/format/o;->b:Lj$/time/format/w;

    .line 37
    .line 38
    iget-object v1, v1, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 39
    .line 40
    iget-object v1, v2, Lj$/time/format/a;->a:Lj$/nio/file/x;

    .line 41
    .line 42
    invoke-virtual {v1, v3, v4, v0}, Lj$/nio/file/x;->g(JLj$/time/format/w;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    iget-object v2, p0, Lj$/time/format/o;->c:Lj$/time/format/a;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    iget-object v0, p0, Lj$/time/format/o;->b:Lj$/time/format/w;

    .line 54
    .line 55
    iget-object v1, v1, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 56
    .line 57
    iget-object v1, v2, Lj$/time/format/a;->a:Lj$/nio/file/x;

    .line 58
    .line 59
    invoke-virtual {v1, v3, v4, v0}, Lj$/nio/file/x;->g(JLj$/time/format/w;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_1
    const/4 v1, 0x1

    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lj$/time/format/o;->d:Lj$/time/format/h;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    new-instance v0, Lj$/time/format/h;

    .line 71
    .line 72
    iget-object v2, p0, Lj$/time/format/o;->a:Lj$/time/temporal/TemporalField;

    .line 73
    .line 74
    const/16 v3, 0x13

    .line 75
    .line 76
    sget-object v4, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    .line 77
    .line 78
    invoke-direct {v0, v2, v1, v3, v4}, Lj$/time/format/h;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lj$/time/format/o;->d:Lj$/time/format/h;

    .line 82
    .line 83
    :cond_3
    iget-object p0, p0, Lj$/time/format/o;->d:Lj$/time/format/h;

    .line 84
    .line 85
    invoke-virtual {p0, p1, p2}, Lj$/time/format/h;->k(Lj$/time/format/r;Ljava/lang/StringBuilder;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    return p0

    .line 90
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    return v1
.end method

.method public final m(Lj$/time/format/p;Ljava/lang/CharSequence;I)I
    .locals 11

    .line 1
    iget-object v2, p0, Lj$/time/format/o;->c:Lj$/time/format/a;

    .line 2
    .line 3
    iget-object v7, p0, Lj$/time/format/o;->a:Lj$/time/temporal/TemporalField;

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ltz p3, :cond_b

    .line 10
    .line 11
    if-gt p3, v3, :cond_b

    .line 12
    .line 13
    iget-boolean v3, p1, Lj$/time/format/p;->c:Z

    .line 14
    .line 15
    iget-object v5, p1, Lj$/time/format/p;->a:Lj$/time/format/DateTimeFormatter;

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Lj$/time/format/o;->b:Lj$/time/format/w;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v6

    .line 24
    :goto_0
    invoke-virtual {p1}, Lj$/time/format/p;->c()Lj$/time/format/u;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    iget-object v8, v8, Lj$/time/format/u;->c:Lj$/time/chrono/j;

    .line 29
    .line 30
    if-nez v8, :cond_1

    .line 31
    .line 32
    iget-object v8, p1, Lj$/time/format/p;->a:Lj$/time/format/DateTimeFormatter;

    .line 33
    .line 34
    iget-object v8, v8, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/j;

    .line 35
    .line 36
    if-nez v8, :cond_1

    .line 37
    .line 38
    sget-object v8, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    .line 39
    .line 40
    :cond_1
    if-eqz v8, :cond_4

    .line 41
    .line 42
    sget-object v9, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    .line 43
    .line 44
    if-ne v8, v9, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget-object v5, v5, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 48
    .line 49
    iget-object v2, v2, Lj$/time/format/a;->a:Lj$/nio/file/x;

    .line 50
    .line 51
    iget-object v2, v2, Lj$/nio/file/x;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Ljava/util/Map;

    .line 54
    .line 55
    check-cast v2, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/util/List;

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    :cond_3
    :goto_1
    move-object v9, v6

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    :goto_2
    iget-object v5, v5, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 72
    .line 73
    iget-object v2, v2, Lj$/time/format/a;->a:Lj$/nio/file/x;

    .line 74
    .line 75
    iget-object v2, v2, Lj$/nio/file/x;->c:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Ljava/util/Map;

    .line 78
    .line 79
    check-cast v2, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Ljava/util/List;

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    goto :goto_1

    .line 94
    :goto_3
    if-eqz v9, :cond_9

    .line 95
    .line 96
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    move-object v10, v2

    .line 107
    check-cast v10, Ljava/util/Map$Entry;

    .line 108
    .line 109
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Ljava/lang/String;

    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    move-object v1, p1

    .line 121
    move-object v4, p2

    .line 122
    move v5, p3

    .line 123
    invoke-virtual/range {v1 .. v6}, Lj$/time/format/p;->g(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    iget-object v1, p0, Lj$/time/format/o;->a:Lj$/time/temporal/TemporalField;

    .line 130
    .line 131
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljava/lang/Long;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    add-int v5, v0, p3

    .line 146
    .line 147
    move-object v0, p1

    .line 148
    move-wide v2, v3

    .line 149
    move v4, p3

    .line 150
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/p;->f(Lj$/time/temporal/TemporalField;JII)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    return v0

    .line 155
    :cond_6
    sget-object v2, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    .line 156
    .line 157
    if-ne v7, v2, :cond_8

    .line 158
    .line 159
    iget-boolean v2, p1, Lj$/time/format/p;->c:Z

    .line 160
    .line 161
    if-nez v2, :cond_8

    .line 162
    .line 163
    invoke-interface {v8}, Lj$/time/chrono/j;->z()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_8

    .line 176
    .line 177
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    move-object v8, v2

    .line 182
    check-cast v8, Lj$/time/chrono/k;

    .line 183
    .line 184
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    const/4 v3, 0x0

    .line 189
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    move-object v1, p1

    .line 194
    move-object v4, p2

    .line 195
    move v5, p3

    .line 196
    invoke-virtual/range {v1 .. v6}, Lj$/time/format/p;->g(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_7

    .line 201
    .line 202
    iget-object v1, p0, Lj$/time/format/o;->a:Lj$/time/temporal/TemporalField;

    .line 203
    .line 204
    invoke-interface {v8}, Lj$/time/chrono/k;->getValue()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    int-to-long v3, v0

    .line 209
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    add-int v5, v0, p3

    .line 214
    .line 215
    move-object v0, p1

    .line 216
    move-wide v2, v3

    .line 217
    move v4, p3

    .line 218
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/p;->f(Lj$/time/temporal/TemporalField;JII)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    return v0

    .line 223
    :cond_8
    iget-boolean v2, p1, Lj$/time/format/p;->c:Z

    .line 224
    .line 225
    if-eqz v2, :cond_9

    .line 226
    .line 227
    not-int v0, p3

    .line 228
    return v0

    .line 229
    :cond_9
    iget-object v2, p0, Lj$/time/format/o;->d:Lj$/time/format/h;

    .line 230
    .line 231
    if-nez v2, :cond_a

    .line 232
    .line 233
    new-instance v2, Lj$/time/format/h;

    .line 234
    .line 235
    iget-object v3, p0, Lj$/time/format/o;->a:Lj$/time/temporal/TemporalField;

    .line 236
    .line 237
    const/16 v5, 0x13

    .line 238
    .line 239
    sget-object v6, Lj$/time/format/SignStyle;->NORMAL:Lj$/time/format/SignStyle;

    .line 240
    .line 241
    const/4 v7, 0x1

    .line 242
    invoke-direct {v2, v3, v7, v5, v6}, Lj$/time/format/h;-><init>(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)V

    .line 243
    .line 244
    .line 245
    iput-object v2, p0, Lj$/time/format/o;->d:Lj$/time/format/h;

    .line 246
    .line 247
    :cond_a
    iget-object v0, p0, Lj$/time/format/o;->d:Lj$/time/format/h;

    .line 248
    .line 249
    invoke-virtual {v0, p1, p2, p3}, Lj$/time/format/h;->m(Lj$/time/format/p;Ljava/lang/CharSequence;I)I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    return v0

    .line 254
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 255
    .line 256
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 257
    .line 258
    .line 259
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lj$/time/format/w;->FULL:Lj$/time/format/w;

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    const-string v2, "Text("

    .line 6
    .line 7
    iget-object v3, p0, Lj$/time/format/o;->b:Lj$/time/format/w;

    .line 8
    .line 9
    iget-object p0, p0, Lj$/time/format/o;->a:Lj$/time/temporal/TemporalField;

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
