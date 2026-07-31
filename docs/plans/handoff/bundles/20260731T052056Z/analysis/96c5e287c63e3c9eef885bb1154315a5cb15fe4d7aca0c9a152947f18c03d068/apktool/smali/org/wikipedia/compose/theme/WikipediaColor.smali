.class public final Lorg/wikipedia/compose/theme/WikipediaColor;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final additionColor:J

.field public final backgroundColor:J

.field public final borderColor:J

.field public final destructiveColor:J

.field public final focusColor:J

.field public final highlightColor:J

.field public final inactiveColor:J

.field public final isDarkTheme:Z

.field public final overlayColor:J

.field public final paperColor:J

.field public final placeholderColor:J

.field public final primaryColor:J

.field public final progressiveColor:J

.field public final secondaryColor:J

.field public final successColor:J

.field public final warningColor:J


# direct methods
.method public constructor <init>(ZJJJJJJJJJJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->isDarkTheme:Z

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 7
    .line 8
    iput-wide p4, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 9
    .line 10
    iput-wide p6, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 11
    .line 12
    iput-wide p8, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->inactiveColor:J

    .line 13
    .line 14
    iput-wide p10, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 15
    .line 16
    iput-wide p12, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 17
    .line 18
    iput-wide p14, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 19
    .line 20
    move-wide/from16 p1, p16

    .line 21
    .line 22
    iput-wide p1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 23
    .line 24
    move-wide/from16 p1, p18

    .line 25
    .line 26
    iput-wide p1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->successColor:J

    .line 27
    .line 28
    move-wide/from16 p1, p20

    .line 29
    .line 30
    iput-wide p1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 31
    .line 32
    move-wide/from16 p1, p22

    .line 33
    .line 34
    iput-wide p1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->warningColor:J

    .line 35
    .line 36
    move-wide/from16 p1, p24

    .line 37
    .line 38
    iput-wide p1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->highlightColor:J

    .line 39
    .line 40
    move-wide/from16 p1, p26

    .line 41
    .line 42
    iput-wide p1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->focusColor:J

    .line 43
    .line 44
    move-wide/from16 p1, p28

    .line 45
    .line 46
    iput-wide p1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->additionColor:J

    .line 47
    .line 48
    move-wide/from16 p1, p30

    .line 49
    .line 50
    iput-wide p1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->overlayColor:J

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 12
    .line 13
    iget-boolean v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->isDarkTheme:Z

    .line 14
    .line 15
    iget-boolean v1, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->isDarkTheme:Z

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_2
    iget-wide v0, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 22
    .line 23
    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 24
    .line 25
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 26
    .line 27
    invoke-static {v2, v3, v0, v1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_3
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 36
    .line 37
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 38
    .line 39
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_4
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 48
    .line 49
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 50
    .line 51
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_5
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->inactiveColor:J

    .line 60
    .line 61
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->inactiveColor:J

    .line 62
    .line 63
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_6

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_6
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 72
    .line 73
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 74
    .line 75
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_7

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_7
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 84
    .line 85
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 86
    .line 87
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_8

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_8
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 95
    .line 96
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 97
    .line 98
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_9

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_9
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 106
    .line 107
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 108
    .line 109
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_a

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_a
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->successColor:J

    .line 117
    .line 118
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->successColor:J

    .line 119
    .line 120
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_b

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_b
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 128
    .line 129
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 130
    .line 131
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_c

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_c
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->warningColor:J

    .line 139
    .line 140
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->warningColor:J

    .line 141
    .line 142
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_d

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_d
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->highlightColor:J

    .line 150
    .line 151
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->highlightColor:J

    .line 152
    .line 153
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_e

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_e
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->focusColor:J

    .line 161
    .line 162
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->focusColor:J

    .line 163
    .line 164
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_f

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_f
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->additionColor:J

    .line 172
    .line 173
    iget-wide v2, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->additionColor:J

    .line 174
    .line 175
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_10

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_10
    iget-wide v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->overlayColor:J

    .line 183
    .line 184
    iget-wide p0, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->overlayColor:J

    .line 185
    .line 186
    invoke-static {v0, v1, p0, p1}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    if-nez p0, :cond_11

    .line 191
    .line 192
    :goto_0
    const/4 p0, 0x0

    .line 193
    return p0

    .line 194
    :cond_11
    :goto_1
    const/4 p0, 0x1

    .line 195
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->isDarkTheme:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    const/16 v1, 0x1f

    .line 11
    .line 12
    mul-int/2addr v0, v1

    .line 13
    sget v2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 14
    .line 15
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->inactiveColor:J

    .line 34
    .line 35
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 40
    .line 41
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 46
    .line 47
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 52
    .line 53
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 58
    .line 59
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->successColor:J

    .line 64
    .line 65
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 70
    .line 71
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->warningColor:J

    .line 76
    .line 77
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->highlightColor:J

    .line 82
    .line 83
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->focusColor:J

    .line 88
    .line 89
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->additionColor:J

    .line 94
    .line 95
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(IIJ)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iget-wide v1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->overlayColor:J

    .line 100
    .line 101
    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(J)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    add-int/2addr p0, v0

    .line 106
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-wide v3, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 16
    .line 17
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-wide v4, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->inactiveColor:J

    .line 22
    .line 23
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-wide v5, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 28
    .line 29
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-wide v6, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 34
    .line 35
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-wide v7, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 40
    .line 41
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-wide v8, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 46
    .line 47
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    iget-wide v9, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->successColor:J

    .line 52
    .line 53
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    iget-wide v10, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 58
    .line 59
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    iget-wide v11, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->warningColor:J

    .line 64
    .line 65
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    iget-wide v12, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->highlightColor:J

    .line 70
    .line 71
    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    iget-wide v13, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->focusColor:J

    .line 76
    .line 77
    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    iget-wide v14, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->additionColor:J

    .line 82
    .line 83
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    move-object/from16 v16, v14

    .line 88
    .line 89
    iget-wide v14, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->overlayColor:J

    .line 90
    .line 91
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    new-instance v15, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    move-object/from16 v17, v14

    .line 98
    .line 99
    const-string v14, "WikipediaColor(isDarkTheme="

    .line 100
    .line 101
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-boolean v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->isDarkTheme:Z

    .line 105
    .line 106
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, ", primaryColor="

    .line 110
    .line 111
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, ", paperColor="

    .line 118
    .line 119
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, ", backgroundColor="

    .line 123
    .line 124
    const-string v1, ", inactiveColor="

    .line 125
    .line 126
    invoke-static {v15, v2, v0, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v0, ", placeholderColor="

    .line 130
    .line 131
    const-string v1, ", secondaryColor="

    .line 132
    .line 133
    invoke-static {v15, v4, v0, v5, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v0, ", borderColor="

    .line 137
    .line 138
    const-string v1, ", progressiveColor="

    .line 139
    .line 140
    invoke-static {v15, v6, v0, v7, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v0, ", successColor="

    .line 144
    .line 145
    const-string v1, ", destructiveColor="

    .line 146
    .line 147
    invoke-static {v15, v8, v0, v9, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v0, ", warningColor="

    .line 151
    .line 152
    const-string v1, ", highlightColor="

    .line 153
    .line 154
    invoke-static {v15, v10, v0, v11, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v0, ", focusColor="

    .line 158
    .line 159
    const-string v1, ", additionColor="

    .line 160
    .line 161
    invoke-static {v15, v12, v0, v13, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    move-object/from16 v0, v16

    .line 165
    .line 166
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, ", overlayColor="

    .line 170
    .line 171
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    move-object/from16 v0, v17

    .line 175
    .line 176
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, ")"

    .line 180
    .line 181
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    return-object v0
.end method
