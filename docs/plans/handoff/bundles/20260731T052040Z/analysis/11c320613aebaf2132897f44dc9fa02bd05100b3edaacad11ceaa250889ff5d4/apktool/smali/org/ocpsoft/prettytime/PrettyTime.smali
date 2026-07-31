.class public final Lorg/ocpsoft/prettytime/PrettyTime;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public volatile cachedUnits:Ljava/util/List;

.field public volatile locale:Ljava/util/Locale;

.field public final units:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    .line 9
    .line 10
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Lj$/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    new-instance v0, Lorg/ocpsoft/prettytime/units/JustNow;

    .line 18
    .line 19
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 20
    .line 21
    .line 22
    const-wide/32 v1, 0xea60

    .line 23
    .line 24
    .line 25
    iput-wide v1, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lorg/ocpsoft/prettytime/units/Millisecond;

    .line 31
    .line 32
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 33
    .line 34
    .line 35
    const-wide/16 v3, 0x1

    .line 36
    .line 37
    iput-wide v3, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lorg/ocpsoft/prettytime/units/Second;

    .line 43
    .line 44
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 45
    .line 46
    .line 47
    const-wide/16 v3, 0x3e8

    .line 48
    .line 49
    iput-wide v3, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lorg/ocpsoft/prettytime/units/Minute;

    .line 55
    .line 56
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-wide v1, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lorg/ocpsoft/prettytime/units/Hour;

    .line 65
    .line 66
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 67
    .line 68
    .line 69
    const-wide/32 v1, 0x36ee80

    .line 70
    .line 71
    .line 72
    iput-wide v1, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lorg/ocpsoft/prettytime/units/Day;

    .line 78
    .line 79
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 80
    .line 81
    .line 82
    const-wide/32 v1, 0x5265c00

    .line 83
    .line 84
    .line 85
    iput-wide v1, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lorg/ocpsoft/prettytime/units/Week;

    .line 91
    .line 92
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 93
    .line 94
    .line 95
    const-wide/32 v1, 0x240c8400

    .line 96
    .line 97
    .line 98
    iput-wide v1, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lorg/ocpsoft/prettytime/units/Month;

    .line 104
    .line 105
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 106
    .line 107
    .line 108
    const-wide v1, 0x9cbeb4d6L

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    iput-wide v1, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lorg/ocpsoft/prettytime/units/Year;

    .line 119
    .line 120
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 121
    .line 122
    .line 123
    const-wide v1, 0x758f07a08L

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    iput-wide v1, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lorg/ocpsoft/prettytime/units/Decade;

    .line 134
    .line 135
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 136
    .line 137
    .line 138
    const-wide v1, 0x497964c4e3L

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    iput-wide v1, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lorg/ocpsoft/prettytime/units/Century;

    .line 149
    .line 150
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 151
    .line 152
    .line 153
    const-wide v1, 0x2debdefb0deL

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    iput-wide v1, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lorg/ocpsoft/prettytime/units/Millennium;

    .line 164
    .line 165
    invoke-direct {v0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    .line 166
    .line 167
    .line 168
    const-wide v1, 0x1cb36b5d4b80L

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    iput-wide v1, v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method


# virtual methods
.method public final addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;-><init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;->setLocale(Ljava/util/Locale;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final formatUnrounded(Lj$/time/OffsetDateTime;)Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lj$/time/OffsetDateTime;->toInstant()Lj$/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-static {v2}, Lj$/util/DesugarDate;->from(Lj$/time/Instant;)Ljava/util/Date;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    :goto_1
    if-nez v2, :cond_2

    .line 20
    .line 21
    new-instance v2, Ljava/util/Date;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-virtual {v3}, Lj$/time/Instant;->toEpochMilli()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    sub-long/2addr v4, v2

    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    cmp-long v6, v4, v2

    .line 42
    .line 43
    if-nez v6, :cond_3

    .line 44
    .line 45
    const-wide/16 v4, 0x1

    .line 46
    .line 47
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v9

    .line 51
    iget-object v6, v0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 52
    .line 53
    if-nez v6, :cond_4

    .line 54
    .line 55
    new-instance v6, Ljava/util/ArrayList;

    .line 56
    .line 57
    iget-object v11, v0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Lj$/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-virtual {v11}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    new-instance v11, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    const/16 v12, 0x10

    .line 69
    .line 70
    invoke-direct {v11, v12}, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v11}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-static {v6, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v6}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    iput-object v6, v0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 85
    .line 86
    :cond_4
    iget-object v6, v0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    .line 87
    .line 88
    new-instance v11, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    .line 89
    .line 90
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    const/4 v13, 0x0

    .line 94
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    if-ge v13, v14, :cond_b

    .line 99
    .line 100
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    check-cast v14, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 105
    .line 106
    move-object v15, v14

    .line 107
    check-cast v15, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    .line 108
    .line 109
    iget-wide v7, v15, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 110
    .line 111
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    move-object v15, v14

    .line 116
    check-cast v15, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    .line 117
    .line 118
    move-wide/from16 v16, v2

    .line 119
    .line 120
    iget-wide v1, v15, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    .line 121
    .line 122
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const/16 v18, 0x1

    .line 131
    .line 132
    add-int/lit8 v3, v3, -0x1

    .line 133
    .line 134
    if-ne v13, v3, :cond_5

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    const/16 v18, 0x0

    .line 138
    .line 139
    :goto_3
    cmp-long v3, v16, v1

    .line 140
    .line 141
    if-nez v3, :cond_6

    .line 142
    .line 143
    if-nez v18, :cond_6

    .line 144
    .line 145
    add-int/lit8 v1, v13, 0x1

    .line 146
    .line 147
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 152
    .line 153
    check-cast v1, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    .line 154
    .line 155
    iget-wide v1, v1, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 156
    .line 157
    move v3, v13

    .line 158
    iget-wide v12, v15, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 159
    .line 160
    div-long/2addr v1, v12

    .line 161
    goto :goto_4

    .line 162
    :cond_6
    move v3, v13

    .line 163
    :goto_4
    mul-long/2addr v1, v7

    .line 164
    cmp-long v1, v1, v9

    .line 165
    .line 166
    if-gtz v1, :cond_8

    .line 167
    .line 168
    if-eqz v18, :cond_7

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_7
    add-int/lit8 v13, v3, 0x1

    .line 172
    .line 173
    move-wide/from16 v2, v16

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_8
    :goto_5
    iput-object v14, v11, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    .line 177
    .line 178
    cmp-long v1, v7, v9

    .line 179
    .line 180
    if-lez v1, :cond_a

    .line 181
    .line 182
    cmp-long v1, v16, v4

    .line 183
    .line 184
    if-lez v1, :cond_9

    .line 185
    .line 186
    const-wide/16 v7, -0x1

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_9
    const-wide/16 v7, 0x1

    .line 190
    .line 191
    :goto_6
    iput-wide v7, v11, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    .line 192
    .line 193
    move-wide/from16 v1, v16

    .line 194
    .line 195
    iput-wide v1, v11, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_a
    div-long v1, v4, v7

    .line 199
    .line 200
    iput-wide v1, v11, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    .line 201
    .line 202
    mul-long/2addr v1, v7

    .line 203
    sub-long/2addr v4, v1

    .line 204
    iput-wide v4, v11, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    .line 205
    .line 206
    :cond_b
    :goto_7
    iget-object v1, v11, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    .line 207
    .line 208
    iget-object v2, v0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Lj$/util/concurrent/ConcurrentHashMap;

    .line 209
    .line 210
    if-nez v1, :cond_c

    .line 211
    .line 212
    const/4 v1, 0x0

    .line 213
    goto :goto_8

    .line 214
    :cond_c
    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-eqz v3, :cond_d

    .line 219
    .line 220
    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    move-object v1, v0

    .line 225
    check-cast v1, Lorg/ocpsoft/prettytime/TimeFormat;

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_d
    new-instance v3, Lj$/util/concurrent/ConcurrentHashMap;

    .line 229
    .line 230
    invoke-direct {v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    new-instance v4, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

    .line 238
    .line 239
    const/4 v5, 0x0

    .line 240
    invoke-direct {v4, v0, v3, v5}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 241
    .line 242
    .line 243
    invoke-static {v2, v4}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v3, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    move-object v1, v0

    .line 255
    check-cast v1, Lorg/ocpsoft/prettytime/TimeFormat;

    .line 256
    .line 257
    :goto_8
    invoke-interface {v1, v11}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-interface {v1, v11, v0}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PrettyTime [reference=null, locale="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "]"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
