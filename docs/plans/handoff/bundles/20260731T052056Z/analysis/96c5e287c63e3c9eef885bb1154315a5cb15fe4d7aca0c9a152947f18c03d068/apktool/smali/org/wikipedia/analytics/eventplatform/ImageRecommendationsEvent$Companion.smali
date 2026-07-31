.class public final Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;
    .locals 4

    .line 1
    and-int/lit8 v0, p10, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p10, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    and-int/lit8 v0, p10, 0x4

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    move-object p3, v1

    .line 17
    :cond_2
    and-int/lit8 v0, p10, 0x8

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    move-object p4, v1

    .line 22
    :cond_3
    and-int/lit8 v0, p10, 0x10

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    move-object p5, v1

    .line 27
    :cond_4
    and-int/lit8 v0, p10, 0x20

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    move-object p6, v1

    .line 32
    :cond_5
    and-int/lit8 v0, p10, 0x40

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    move-object p7, v1

    .line 37
    :cond_6
    and-int/lit16 v0, p10, 0x80

    .line 38
    .line 39
    if-eqz v0, :cond_7

    .line 40
    .line 41
    move-object p8, v1

    .line 42
    :cond_7
    and-int/lit16 p10, p10, 0x100

    .line 43
    .line 44
    if-eqz p10, :cond_8

    .line 45
    .line 46
    const/4 p9, 0x0

    .line 47
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string p0, ", "

    .line 51
    .line 52
    if-eqz p1, :cond_9

    .line 53
    .line 54
    :try_start_0
    const-string p10, "UTF-8"

    .line 55
    .line 56
    invoke-static {p1, p10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const-string p10, "+"

    .line 64
    .line 65
    const-string v0, "%20"

    .line 66
    .line 67
    invoke-static {p1, p10, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const-string p10, "filename: "

    .line 72
    .line 73
    invoke-static {p10, p1, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_9
    move-object p1, v1

    .line 84
    :goto_0
    const-string p10, ""

    .line 85
    .line 86
    if-nez p1, :cond_a

    .line 87
    .line 88
    move-object p1, p10

    .line 89
    :cond_a
    if-eqz p2, :cond_b

    .line 90
    .line 91
    const-string v0, "recommendation_source: "

    .line 92
    .line 93
    invoke-static {v0, p2, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    goto :goto_1

    .line 98
    :cond_b
    move-object p2, v1

    .line 99
    :goto_1
    if-nez p2, :cond_c

    .line 100
    .line 101
    move-object p2, p10

    .line 102
    :cond_c
    if-eqz p3, :cond_d

    .line 103
    .line 104
    const-string v0, "recommendation_source_project: "

    .line 105
    .line 106
    invoke-static {v0, p3, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    goto :goto_2

    .line 111
    :cond_d
    move-object p3, v1

    .line 112
    :goto_2
    if-nez p3, :cond_e

    .line 113
    .line 114
    move-object p3, p10

    .line 115
    :cond_e
    if-eqz p4, :cond_f

    .line 116
    .line 117
    const-string v0, "rejection_reasons: "

    .line 118
    .line 119
    invoke-static {v0, p4, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    goto :goto_3

    .line 124
    :cond_f
    move-object p4, v1

    .line 125
    :goto_3
    if-nez p4, :cond_10

    .line 126
    .line 127
    move-object p4, p10

    .line 128
    :cond_10
    if-eqz p5, :cond_11

    .line 129
    .line 130
    const-string v0, "acceptance_state: "

    .line 131
    .line 132
    invoke-static {v0, p5, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p5

    .line 136
    goto :goto_4

    .line 137
    :cond_11
    move-object p5, v1

    .line 138
    :goto_4
    if-nez p5, :cond_12

    .line 139
    .line 140
    move-object p5, p10

    .line 141
    :cond_12
    if-eqz p6, :cond_13

    .line 142
    .line 143
    invoke-virtual {p6}, Ljava/lang/Number;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    new-instance p6, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v0, "revision_id: "

    .line 150
    .line 151
    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p6

    .line 164
    goto :goto_5

    .line 165
    :cond_13
    move-object p6, v1

    .line 166
    :goto_5
    if-nez p6, :cond_14

    .line 167
    .line 168
    move-object p6, p10

    .line 169
    :cond_14
    if-eqz p7, :cond_15

    .line 170
    .line 171
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result p7

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v2, "caption_add: "

    .line 178
    .line 179
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p7

    .line 192
    goto :goto_6

    .line 193
    :cond_15
    move-object p7, v1

    .line 194
    :goto_6
    if-nez p7, :cond_16

    .line 195
    .line 196
    move-object p7, p10

    .line 197
    :cond_16
    if-eqz p8, :cond_17

    .line 198
    .line 199
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    .line 201
    .line 202
    move-result p8

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v1, "alt_text_add: "

    .line 206
    .line 207
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    :cond_17
    if-nez v1, :cond_18

    .line 221
    .line 222
    move-object v1, p10

    .line 223
    :cond_18
    if-eqz p9, :cond_1a

    .line 224
    .line 225
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->timer:Lorg/wikipedia/util/ActiveTimer;

    .line 226
    .line 227
    iget-boolean p8, p0, Lorg/wikipedia/util/ActiveTimer;->isPaused:Z

    .line 228
    .line 229
    if-eqz p8, :cond_19

    .line 230
    .line 231
    iget-wide p8, p0, Lorg/wikipedia/util/ActiveTimer;->pauseMillis:J

    .line 232
    .line 233
    :goto_7
    iget-wide v2, p0, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    .line 234
    .line 235
    sub-long/2addr p8, v2

    .line 236
    goto :goto_8

    .line 237
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 238
    .line 239
    .line 240
    move-result-wide p8

    .line 241
    goto :goto_7

    .line 242
    :goto_8
    const-string p0, "time_spent: "

    .line 243
    .line 244
    invoke-static {p0, p8, p9}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p10

    .line 248
    :cond_1a
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    return-object p0
.end method

.method public static logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 8
    .line 9
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;

    .line 10
    .line 11
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 12
    .line 13
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    move-object v2, p0

    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p2

    .line 20
    move-object v6, p3

    .line 21
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic logAction$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    move-object p3, v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2, p3, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static logImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "recommendedimagetoolbar"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->timer:Lorg/wikipedia/util/ActiveTimer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iput-wide v1, v0, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    .line 25
    .line 26
    iput-wide v1, v0, Lorg/wikipedia/util/ActiveTimer;->pauseMillis:J

    .line 27
    .line 28
    :cond_0
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 29
    .line 30
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;

    .line 31
    .line 32
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 33
    .line 34
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-string v2, "impression"

    .line 39
    .line 40
    move-object v3, p0

    .line 41
    move-object v4, p1

    .line 42
    move-object v6, p2

    .line 43
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic logImpression$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    move-object p2, v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final logEditSuccess(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;J)V
    .locals 15

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    aget v1, v1, v2

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v3, "edit_success"

    .line 19
    .line 20
    if-eq v1, v2, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    const/4 v13, 0x0

    .line 36
    const/16 v14, 0x1df

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v12, 0x0

    .line 45
    move-object v4, p0

    .line 46
    invoke-static/range {v4 .. v14}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v1, "se_add_image_tags"

    .line 51
    .line 52
    invoke-static {v3, v1, p0, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    const/4 v13, 0x0

    .line 61
    const/16 v14, 0x1df

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v12, 0x0

    .line 70
    move-object v4, p0

    .line 71
    invoke-static/range {v4 .. v14}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v1, "se_translate_caption"

    .line 76
    .line 77
    invoke-static {v3, v1, p0, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    const/4 v13, 0x0

    .line 86
    const/16 v14, 0x1df

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    const/4 v8, 0x0

    .line 92
    const/4 v9, 0x0

    .line 93
    const/4 v11, 0x0

    .line 94
    const/4 v12, 0x0

    .line 95
    move-object v4, p0

    .line 96
    invoke-static/range {v4 .. v14}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string v1, "se_add_caption"

    .line 101
    .line 102
    invoke-static {v3, v1, p0, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    const/4 v13, 0x0

    .line 111
    const/16 v14, 0x1df

    .line 112
    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    const/4 v8, 0x0

    .line 117
    const/4 v9, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    const/4 v12, 0x0

    .line 120
    move-object v4, p0

    .line 121
    invoke-static/range {v4 .. v14}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string v1, "se_translate_description"

    .line 126
    .line 127
    invoke-static {v3, v1, p0, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    const/4 v13, 0x0

    .line 136
    const/16 v14, 0x1df

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    const/4 v6, 0x0

    .line 140
    const/4 v7, 0x0

    .line 141
    const/4 v8, 0x0

    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v11, 0x0

    .line 144
    const/4 v12, 0x0

    .line 145
    move-object v4, p0

    .line 146
    invoke-static/range {v4 .. v14}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-string v1, "se_add_description"

    .line 151
    .line 152
    invoke-static {v3, v1, p0, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;

    .line 2
    .line 3
    return-object p0
.end method
