.class public final Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final enrolledNotStarted:Ljava/util/List;

.field public static final streakNeedsReading:Ljava/util/List;

.field public static final streakOngoing:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    const v0, 0x7f120739

    .line 2
    .line 3
    .line 4
    const v1, 0x7f08031b

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsReadingCombination(II)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v2, 0x7f120738

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v1}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsReadingCombination(II)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const v3, 0x7f12073e

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v1}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsReadingCombination(II)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const v4, 0x7f12073c

    .line 26
    .line 27
    .line 28
    invoke-static {v4, v1}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsReadingCombination(II)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v5, 0x7f12073a

    .line 33
    .line 34
    .line 35
    const v6, 0x7f08031e

    .line 36
    .line 37
    .line 38
    invoke-static {v5, v6}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsReadingCombination(II)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const v7, 0x7f12073d

    .line 43
    .line 44
    .line 45
    invoke-static {v7, v6}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsReadingCombination(II)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const v8, 0x7f12073b

    .line 50
    .line 51
    .line 52
    invoke-static {v8, v6}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsReadingCombination(II)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-static {v4, v6}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsReadingCombination(II)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/16 v9, 0x8

    .line 61
    .line 62
    new-array v9, v9, [Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    aput-object v0, v9, v10

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    aput-object v2, v9, v0

    .line 69
    .line 70
    const/4 v2, 0x2

    .line 71
    aput-object v3, v9, v2

    .line 72
    .line 73
    const/4 v3, 0x3

    .line 74
    aput-object v1, v9, v3

    .line 75
    .line 76
    const/4 v1, 0x4

    .line 77
    aput-object v5, v9, v1

    .line 78
    .line 79
    const/4 v5, 0x5

    .line 80
    aput-object v7, v9, v5

    .line 81
    .line 82
    const/4 v5, 0x6

    .line 83
    aput-object v8, v9, v5

    .line 84
    .line 85
    const/4 v5, 0x7

    .line 86
    aput-object v4, v9, v5

    .line 87
    .line 88
    invoke-static {v9}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    sput-object v4, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->streakNeedsReading:Ljava/util/List;

    .line 93
    .line 94
    const v4, 0x7f12072d

    .line 95
    .line 96
    .line 97
    const v5, 0x7f12072c

    .line 98
    .line 99
    .line 100
    invoke-static {v4, v5, v6}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsEnrolledNotStartedCombination(III)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const v5, 0x7f120746

    .line 105
    .line 106
    .line 107
    const v7, 0x7f120745

    .line 108
    .line 109
    .line 110
    invoke-static {v5, v7, v6}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsEnrolledNotStartedCombination(III)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const v6, 0x7f120747

    .line 115
    .line 116
    .line 117
    const v7, 0x7f08031f

    .line 118
    .line 119
    .line 120
    const v8, 0x7f120748

    .line 121
    .line 122
    .line 123
    invoke-static {v8, v6, v7}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsEnrolledNotStartedCombination(III)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const v7, 0x7f120743

    .line 128
    .line 129
    .line 130
    const v8, 0x7f080320

    .line 131
    .line 132
    .line 133
    const v9, 0x7f120744

    .line 134
    .line 135
    .line 136
    invoke-static {v9, v7, v8}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->needsEnrolledNotStartedCombination(III)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    new-array v8, v1, [Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 141
    .line 142
    aput-object v4, v8, v10

    .line 143
    .line 144
    aput-object v5, v8, v0

    .line 145
    .line 146
    aput-object v6, v8, v2

    .line 147
    .line 148
    aput-object v7, v8, v3

    .line 149
    .line 150
    invoke-static {v8}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    sput-object v4, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->enrolledNotStarted:Ljava/util/List;

    .line 155
    .line 156
    new-instance v11, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 157
    .line 158
    sget-wide v13, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->phoneReadingBackground:J

    .line 159
    .line 160
    sget-wide v15, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->phoneReadingContent:J

    .line 161
    .line 162
    sget-wide v4, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->phoneReadingProgressColor:J

    .line 163
    .line 164
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 165
    .line 166
    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 167
    .line 168
    .line 169
    const/16 v19, 0x0

    .line 170
    .line 171
    const/16 v20, 0x30

    .line 172
    .line 173
    const v12, 0x7f08031d

    .line 174
    .line 175
    .line 176
    const/16 v18, 0x0

    .line 177
    .line 178
    move-object/from16 v17, v6

    .line 179
    .line 180
    invoke-direct/range {v11 .. v20}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;-><init>(IJJLandroidx/compose/ui/graphics/Color;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 181
    .line 182
    .line 183
    new-instance v12, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 184
    .line 185
    sget-wide v14, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->musicReadingBackground:J

    .line 186
    .line 187
    sget-wide v16, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->musicContent:J

    .line 188
    .line 189
    sget-wide v4, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->musicReadingProgressColor:J

    .line 190
    .line 191
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 192
    .line 193
    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 194
    .line 195
    .line 196
    const/16 v20, 0x0

    .line 197
    .line 198
    const/16 v21, 0x30

    .line 199
    .line 200
    const v13, 0x7f080319

    .line 201
    .line 202
    .line 203
    move-object/from16 v18, v6

    .line 204
    .line 205
    invoke-direct/range {v12 .. v21}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;-><init>(IJJLandroidx/compose/ui/graphics/Color;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 206
    .line 207
    .line 208
    new-instance v13, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 209
    .line 210
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 211
    .line 212
    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 213
    .line 214
    .line 215
    const/16 v21, 0x0

    .line 216
    .line 217
    const/16 v22, 0x30

    .line 218
    .line 219
    move-wide/from16 v17, v16

    .line 220
    .line 221
    move-wide v15, v14

    .line 222
    const v14, 0x7f08031a

    .line 223
    .line 224
    .line 225
    move-object/from16 v19, v6

    .line 226
    .line 227
    invoke-direct/range {v13 .. v22}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;-><init>(IJJLandroidx/compose/ui/graphics/Color;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 228
    .line 229
    .line 230
    new-instance v14, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 231
    .line 232
    sget-wide v16, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->spaceReadingBackground:J

    .line 233
    .line 234
    sget-wide v18, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->spaceContent:J

    .line 235
    .line 236
    sget-wide v4, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->spaceReadingProgressColor:J

    .line 237
    .line 238
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 239
    .line 240
    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 241
    .line 242
    .line 243
    const/16 v22, 0x0

    .line 244
    .line 245
    const/16 v23, 0x30

    .line 246
    .line 247
    const v15, 0x7f08031c

    .line 248
    .line 249
    .line 250
    move-object/from16 v20, v6

    .line 251
    .line 252
    invoke-direct/range {v14 .. v23}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;-><init>(IJJLandroidx/compose/ui/graphics/Color;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 253
    .line 254
    .line 255
    new-array v1, v1, [Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 256
    .line 257
    aput-object v11, v1, v10

    .line 258
    .line 259
    aput-object v12, v1, v0

    .line 260
    .line 261
    aput-object v13, v1, v2

    .line 262
    .line 263
    aput-object v14, v1, v3

    .line 264
    .line 265
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    sput-object v0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombinations;->streakOngoing:Ljava/util/List;

    .line 270
    .line 271
    return-void
.end method

.method public static forToday$default(Ljava/util/List;Lj$/time/LocalDate;)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;
    .locals 4

    .line 1
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 12
    .line 13
    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, p1, v0}, Lj$/time/temporal/ChronoUnit;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long p1, v0, v2

    .line 24
    .line 25
    if-gez p1, :cond_0

    .line 26
    .line 27
    move-wide v0, v2

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    int-to-long v2, p1

    .line 33
    rem-long/2addr v0, v2

    .line 34
    long-to-int p1, v0

    .line 35
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 40
    .line 41
    return-object p0
.end method

.method public static needsEnrolledNotStartedCombination(III)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;
    .locals 10

    .line 1
    new-instance v0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 2
    .line 3
    sget-wide v2, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->challengeNotOptInBackground:J

    .line 4
    .line 5
    sget-wide v4, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->primary:J

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    const/16 v9, 0x8

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    move v1, p2

    .line 19
    invoke-direct/range {v0 .. v9}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;-><init>(IJJLandroidx/compose/ui/graphics/Color;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static needsReadingCombination(II)Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;
    .locals 10

    .line 1
    new-instance v0, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 2
    .line 3
    sget-wide v2, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->streakOngoingNeedsReadingBackground:J

    .line 4
    .line 5
    sget-wide v4, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->streakOngoingNeedsReadingContent:J

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    const/4 v8, 0x0

    .line 12
    const/16 v9, 0x28

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    move v1, p1

    .line 16
    invoke-direct/range {v0 .. v9}, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;-><init>(IJJLandroidx/compose/ui/graphics/Color;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
