.class public final Lj$/time/format/g;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/time/format/e;


# virtual methods
.method public final f(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lj$/time/format/y;->a(Lj$/time/temporal/n;)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v0, v0, Lj$/time/format/y;->a:Lj$/time/temporal/TemporalAccessor;

    .line 12
    .line 13
    sget-object v3, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 14
    .line 15
    invoke-interface {v0, v3}, Lj$/time/temporal/TemporalAccessor;->c(Lj$/time/temporal/n;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, v3}, Lj$/time/temporal/TemporalAccessor;->q(Lj$/time/temporal/n;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    const/4 v4, 0x0

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    return v4

    .line 35
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    const-wide/16 v7, 0x0

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v9

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-wide v9, v7

    .line 49
    :goto_1
    iget-object v0, v3, Lj$/time/temporal/a;->b:Lj$/time/temporal/q;

    .line 50
    .line 51
    invoke-virtual {v0, v9, v10, v3}, Lj$/time/temporal/q;->a(JLj$/time/temporal/n;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const-wide v2, -0xe79747c00L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v2, v5, v2

    .line 61
    .line 62
    const-string v3, ":00"

    .line 63
    .line 64
    const-wide/16 v9, 0x1

    .line 65
    .line 66
    const/4 v11, 0x1

    .line 67
    const-wide v12, 0xe79747c00L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const-wide v14, 0x497968bd80L

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    if-ltz v2, :cond_4

    .line 78
    .line 79
    const-wide v16, 0x3afff44180L

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    sub-long v5, v5, v16

    .line 85
    .line 86
    invoke-static {v5, v6, v14, v15}, Lj$/time/a;->T(JJ)J

    .line 87
    .line 88
    .line 89
    move-result-wide v16

    .line 90
    add-long v9, v16, v9

    .line 91
    .line 92
    invoke-static {v5, v6, v14, v15}, Lj$/time/a;->S(JJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    sub-long/2addr v5, v12

    .line 97
    sget-object v2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 98
    .line 99
    invoke-static {v5, v6, v4, v2}, Lj$/time/LocalDateTime;->w(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    cmp-long v5, v9, v7

    .line 104
    .line 105
    if-lez v5, :cond_3

    .line 106
    .line 107
    const/16 v5, 0x2b

    .line 108
    .line 109
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v2, v2, Lj$/time/LocalDateTime;->b:Lj$/time/LocalTime;

    .line 119
    .line 120
    iget-byte v2, v2, Lj$/time/LocalTime;->c:B

    .line 121
    .line 122
    if-nez v2, :cond_8

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    add-long/2addr v5, v12

    .line 129
    move-wide/from16 p0, v7

    .line 130
    .line 131
    div-long v7, v5, v14

    .line 132
    .line 133
    rem-long/2addr v5, v14

    .line 134
    sub-long v12, v5, v12

    .line 135
    .line 136
    sget-object v2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 137
    .line 138
    invoke-static {v12, v13, v4, v2}, Lj$/time/LocalDateTime;->w(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v13, v2, Lj$/time/LocalDateTime;->b:Lj$/time/LocalTime;

    .line 150
    .line 151
    iget-byte v13, v13, Lj$/time/LocalTime;->c:B

    .line 152
    .line 153
    if-nez v13, :cond_5

    .line 154
    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_5
    cmp-long v3, v7, p0

    .line 159
    .line 160
    if-gez v3, :cond_8

    .line 161
    .line 162
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->getYear()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    const/16 v3, -0x2710

    .line 167
    .line 168
    if-ne v2, v3, :cond_6

    .line 169
    .line 170
    add-int/lit8 v2, v12, 0x2

    .line 171
    .line 172
    sub-long/2addr v7, v9

    .line 173
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v1, v12, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    cmp-long v2, v5, p0

    .line 182
    .line 183
    if-nez v2, :cond_7

    .line 184
    .line 185
    invoke-virtual {v1, v12, v7, v8}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_7
    add-int/2addr v12, v11

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 191
    .line 192
    .line 193
    move-result-wide v2

    .line 194
    invoke-virtual {v1, v12, v2, v3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    :cond_8
    :goto_2
    if-gtz v0, :cond_9

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_9
    const/16 v2, 0x2e

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const v2, 0x5f5e100

    .line 206
    .line 207
    .line 208
    :goto_3
    if-gtz v0, :cond_b

    .line 209
    .line 210
    rem-int/lit8 v3, v4, 0x3

    .line 211
    .line 212
    if-nez v3, :cond_b

    .line 213
    .line 214
    const/4 v3, -0x2

    .line 215
    if-ge v4, v3, :cond_a

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_a
    :goto_4
    const/16 v0, 0x5a

    .line 219
    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    return v11

    .line 224
    :cond_b
    :goto_5
    div-int v3, v0, v2

    .line 225
    .line 226
    add-int/lit8 v5, v3, 0x30

    .line 227
    .line 228
    int-to-char v5, v5

    .line 229
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    mul-int/2addr v3, v2

    .line 233
    sub-int/2addr v0, v3

    .line 234
    div-int/lit8 v2, v2, 0xa

    .line 235
    .line 236
    add-int/lit8 v4, v4, 0x1

    .line 237
    .line 238
    goto :goto_3
.end method

.method public final g(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v4, p3

    .line 4
    .line 5
    new-instance v1, Lj$/time/format/v;

    .line 6
    .line 7
    invoke-direct {v1}, Lj$/time/format/v;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x54

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lj$/time/format/v;->d(C)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-virtual {v1, v2, v3}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 24
    .line 25
    .line 26
    const/16 v5, 0x3a

    .line 27
    .line 28
    invoke-virtual {v1, v5}, Lj$/time/format/v;->d(C)V

    .line 29
    .line 30
    .line 31
    sget-object v6, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 32
    .line 33
    invoke-virtual {v1, v6, v3}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v5}, Lj$/time/format/v;->d(C)V

    .line 37
    .line 38
    .line 39
    sget-object v5, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 40
    .line 41
    invoke-virtual {v1, v5, v3}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 42
    .line 43
    .line 44
    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    const/16 v8, 0x9

    .line 48
    .line 49
    const/4 v9, 0x1

    .line 50
    invoke-virtual {v1, v7, v3, v8, v9}, Lj$/time/format/v;->b(Lj$/time/temporal/a;IIZ)V

    .line 51
    .line 52
    .line 53
    const/16 v8, 0x5a

    .line 54
    .line 55
    invoke-virtual {v1, v8}, Lj$/time/format/v;->d(C)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    sget-object v10, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    invoke-virtual {v1, v8, v10, v11}, Lj$/time/format/v;->r(Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lj$/time/format/DateTimeFormatter;->c()Lj$/time/format/d;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v8, Lj$/time/format/w;

    .line 74
    .line 75
    iget-object v10, v0, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    .line 76
    .line 77
    invoke-direct {v8, v10}, Lj$/time/format/w;-><init>(Lj$/time/format/DateTimeFormatter;)V

    .line 78
    .line 79
    .line 80
    iget-boolean v10, v0, Lj$/time/format/w;->b:Z

    .line 81
    .line 82
    iput-boolean v10, v8, Lj$/time/format/w;->b:Z

    .line 83
    .line 84
    iget-boolean v10, v0, Lj$/time/format/w;->c:Z

    .line 85
    .line 86
    iput-boolean v10, v8, Lj$/time/format/w;->c:Z

    .line 87
    .line 88
    move-object/from16 v10, p2

    .line 89
    .line 90
    invoke-virtual {v1, v8, v10, v4}, Lj$/time/format/d;->g(Lj$/time/format/w;Ljava/lang/CharSequence;I)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-gez v1, :cond_0

    .line 95
    .line 96
    return v1

    .line 97
    :cond_0
    sget-object v10, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 98
    .line 99
    invoke-virtual {v8, v10}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    sget-object v12, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 108
    .line 109
    invoke-virtual {v8, v12}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    sget-object v13, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 118
    .line 119
    invoke-virtual {v8, v13}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    invoke-virtual {v13}, Ljava/lang/Long;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    invoke-virtual {v8, v2}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-virtual {v8, v6}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    invoke-virtual {v8, v5}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v8, v7}, Lj$/time/format/w;->e(Lj$/time/temporal/a;)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-eqz v5, :cond_1

    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    move v5, v3

    .line 159
    :goto_0
    if-eqz v8, :cond_2

    .line 160
    .line 161
    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    goto :goto_1

    .line 166
    :cond_2
    move v8, v3

    .line 167
    :goto_1
    const/16 v14, 0x18

    .line 168
    .line 169
    if-ne v2, v14, :cond_3

    .line 170
    .line 171
    if-nez v6, :cond_3

    .line 172
    .line 173
    if-nez v5, :cond_3

    .line 174
    .line 175
    if-nez v8, :cond_3

    .line 176
    .line 177
    move v2, v3

    .line 178
    goto :goto_2

    .line 179
    :cond_3
    const/16 v14, 0x17

    .line 180
    .line 181
    if-ne v2, v14, :cond_4

    .line 182
    .line 183
    const/16 v14, 0x3b

    .line 184
    .line 185
    if-ne v6, v14, :cond_4

    .line 186
    .line 187
    const/16 v15, 0x3c

    .line 188
    .line 189
    if-ne v5, v15, :cond_4

    .line 190
    .line 191
    invoke-virtual {v0}, Lj$/time/format/w;->c()Lj$/time/format/d0;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    iput-boolean v9, v5, Lj$/time/format/d0;->d:Z

    .line 196
    .line 197
    move v9, v3

    .line 198
    move v5, v14

    .line 199
    goto :goto_2

    .line 200
    :cond_4
    move v9, v3

    .line 201
    :goto_2
    long-to-int v14, v10

    .line 202
    rem-int/lit16 v14, v14, 0x2710

    .line 203
    .line 204
    :try_start_0
    sget-object v15, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    .line 205
    .line 206
    invoke-static {v14, v12, v13}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    invoke-static {v2, v6, v5, v3}, Lj$/time/LocalTime;->y(IIII)Lj$/time/LocalTime;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    new-instance v3, Lj$/time/LocalDateTime;

    .line 215
    .line 216
    invoke-direct {v3, v12, v2}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    .line 217
    .line 218
    .line 219
    int-to-long v5, v9

    .line 220
    invoke-virtual {v3, v5, v6}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    sget-object v3, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {v2, v3}, Lj$/time/a;->w(Lj$/time/chrono/ChronoLocalDateTime;Lj$/time/ZoneOffset;)J

    .line 230
    .line 231
    .line 232
    move-result-wide v2

    .line 233
    const-wide/16 v5, 0x2710

    .line 234
    .line 235
    div-long/2addr v10, v5

    .line 236
    const-wide v5, 0x497968bd80L

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    invoke-static {v10, v11, v5, v6}, Lj$/time/a;->U(JJ)J

    .line 242
    .line 243
    .line 244
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    add-long/2addr v2, v5

    .line 246
    move v5, v1

    .line 247
    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 248
    .line 249
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/w;->g(Lj$/time/temporal/n;JII)I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    int-to-long v2, v8

    .line 254
    move-object/from16 v0, p1

    .line 255
    .line 256
    move/from16 v4, p3

    .line 257
    .line 258
    move-object v1, v7

    .line 259
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/w;->g(Lj$/time/temporal/n;JII)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    return v0

    .line 264
    :catch_0
    not-int v0, v4

    .line 265
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Instant()"

    .line 2
    .line 3
    return-object p0
.end method
