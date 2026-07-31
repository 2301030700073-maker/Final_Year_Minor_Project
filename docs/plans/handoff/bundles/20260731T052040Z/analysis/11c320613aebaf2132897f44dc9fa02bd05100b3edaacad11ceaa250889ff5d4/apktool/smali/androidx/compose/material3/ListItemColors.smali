.class public final Landroidx/compose/material3/ListItemColors;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final containerColor:J

.field public final contentColor:J

.field public final disabledContainerColor:J

.field public final disabledContentColor:J

.field public final disabledLeadingContentColor:J

.field public final disabledOverlineContentColor:J

.field public final disabledSupportingContentColor:J

.field public final disabledTrailingContentColor:J

.field public final draggedContainerColor:J

.field public final draggedContentColor:J

.field public final draggedLeadingContentColor:J

.field public final draggedOverlineContentColor:J

.field public final draggedSupportingContentColor:J

.field public final draggedTrailingContentColor:J

.field public final leadingContentColor:J

.field public final overlineContentColor:J

.field public final selectedContainerColor:J

.field public final selectedContentColor:J

.field public final selectedLeadingContentColor:J

.field public final selectedOverlineContentColor:J

.field public final selectedSupportingContentColor:J

.field public final selectedTrailingContentColor:J

.field public final supportingContentColor:J

.field public final trailingContentColor:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->containerColor:J

    .line 3
    iput-wide p3, p0, Landroidx/compose/material3/ListItemColors;->contentColor:J

    .line 4
    iput-wide p5, p0, Landroidx/compose/material3/ListItemColors;->leadingContentColor:J

    .line 5
    iput-wide p7, p0, Landroidx/compose/material3/ListItemColors;->trailingContentColor:J

    .line 6
    iput-wide p9, p0, Landroidx/compose/material3/ListItemColors;->overlineContentColor:J

    .line 7
    iput-wide p11, p0, Landroidx/compose/material3/ListItemColors;->supportingContentColor:J

    .line 8
    iput-wide p13, p0, Landroidx/compose/material3/ListItemColors;->disabledContainerColor:J

    move-wide p1, p15

    .line 9
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->disabledContentColor:J

    move-wide/from16 p1, p17

    .line 10
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->disabledLeadingContentColor:J

    move-wide/from16 p1, p19

    .line 11
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->disabledTrailingContentColor:J

    move-wide/from16 p1, p21

    .line 12
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->disabledOverlineContentColor:J

    move-wide/from16 p1, p23

    .line 13
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->disabledSupportingContentColor:J

    move-wide/from16 p1, p25

    .line 14
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->selectedContainerColor:J

    move-wide/from16 p1, p27

    .line 15
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->selectedContentColor:J

    move-wide/from16 p1, p29

    .line 16
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->selectedLeadingContentColor:J

    move-wide/from16 p1, p31

    .line 17
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->selectedTrailingContentColor:J

    move-wide/from16 p1, p33

    .line 18
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->selectedOverlineContentColor:J

    move-wide/from16 p1, p35

    .line 19
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->selectedSupportingContentColor:J

    move-wide/from16 p1, p37

    .line 20
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->draggedContainerColor:J

    move-wide/from16 p1, p39

    .line 21
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->draggedContentColor:J

    move-wide/from16 p1, p41

    .line 22
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->draggedLeadingContentColor:J

    move-wide/from16 p1, p43

    .line 23
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->draggedTrailingContentColor:J

    move-wide/from16 p1, p45

    .line 24
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->draggedOverlineContentColor:J

    move-wide/from16 p1, p47

    .line 25
    iput-wide p1, p0, Landroidx/compose/material3/ListItemColors;->draggedSupportingContentColor:J

    return-void
.end method


# virtual methods
.method public final containerColor-XeAY9LY(ZZZ)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->disabledContainerColor:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    if-eqz p3, :cond_1

    .line 7
    .line 8
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->draggedContainerColor:J

    .line 9
    .line 10
    return-wide p0

    .line 11
    :cond_1
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->selectedContainerColor:J

    .line 14
    .line 15
    return-wide p0

    .line 16
    :cond_2
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->containerColor:J

    .line 17
    .line 18
    return-wide p0
.end method

.method public final contentColor-XeAY9LY(ZZZ)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->disabledContentColor:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    if-eqz p3, :cond_1

    .line 7
    .line 8
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->draggedContentColor:J

    .line 9
    .line 10
    return-wide p0

    .line 11
    :cond_1
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->selectedContentColor:J

    .line 14
    .line 15
    return-wide p0

    .line 16
    :cond_2
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->contentColor:J

    .line 17
    .line 18
    return-wide p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1a

    .line 7
    .line 8
    instance-of v2, p1, Landroidx/compose/material3/ListItemColors;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_1
    check-cast p1, Landroidx/compose/material3/ListItemColors;

    .line 15
    .line 16
    iget-wide v2, p1, Landroidx/compose/material3/ListItemColors;->containerColor:J

    .line 17
    .line 18
    iget-wide v4, p0, Landroidx/compose/material3/ListItemColors;->containerColor:J

    .line 19
    .line 20
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->contentColor:J

    .line 28
    .line 29
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->contentColor:J

    .line 30
    .line 31
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->leadingContentColor:J

    .line 39
    .line 40
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->leadingContentColor:J

    .line 41
    .line 42
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    return v1

    .line 49
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->trailingContentColor:J

    .line 50
    .line 51
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->trailingContentColor:J

    .line 52
    .line 53
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_5

    .line 58
    .line 59
    return v1

    .line 60
    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->overlineContentColor:J

    .line 61
    .line 62
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->overlineContentColor:J

    .line 63
    .line 64
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_6

    .line 69
    .line 70
    return v1

    .line 71
    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->supportingContentColor:J

    .line 72
    .line 73
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->supportingContentColor:J

    .line 74
    .line 75
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_7

    .line 80
    .line 81
    return v1

    .line 82
    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledContainerColor:J

    .line 83
    .line 84
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->disabledContainerColor:J

    .line 85
    .line 86
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_8

    .line 91
    .line 92
    return v1

    .line 93
    :cond_8
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledContentColor:J

    .line 94
    .line 95
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->disabledContentColor:J

    .line 96
    .line 97
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_9

    .line 102
    .line 103
    return v1

    .line 104
    :cond_9
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledLeadingContentColor:J

    .line 105
    .line 106
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->disabledLeadingContentColor:J

    .line 107
    .line 108
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_a

    .line 113
    .line 114
    return v1

    .line 115
    :cond_a
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledTrailingContentColor:J

    .line 116
    .line 117
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->disabledTrailingContentColor:J

    .line 118
    .line 119
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_b

    .line 124
    .line 125
    return v1

    .line 126
    :cond_b
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledOverlineContentColor:J

    .line 127
    .line 128
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->disabledOverlineContentColor:J

    .line 129
    .line 130
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_c

    .line 135
    .line 136
    return v1

    .line 137
    :cond_c
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledSupportingContentColor:J

    .line 138
    .line 139
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->disabledSupportingContentColor:J

    .line 140
    .line 141
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_d

    .line 146
    .line 147
    return v1

    .line 148
    :cond_d
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedContainerColor:J

    .line 149
    .line 150
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->selectedContainerColor:J

    .line 151
    .line 152
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_e

    .line 157
    .line 158
    return v1

    .line 159
    :cond_e
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedContentColor:J

    .line 160
    .line 161
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->selectedContentColor:J

    .line 162
    .line 163
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-nez v2, :cond_f

    .line 168
    .line 169
    return v1

    .line 170
    :cond_f
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedLeadingContentColor:J

    .line 171
    .line 172
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->selectedLeadingContentColor:J

    .line 173
    .line 174
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_10

    .line 179
    .line 180
    return v1

    .line 181
    :cond_10
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedTrailingContentColor:J

    .line 182
    .line 183
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->selectedTrailingContentColor:J

    .line 184
    .line 185
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_11

    .line 190
    .line 191
    return v1

    .line 192
    :cond_11
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedOverlineContentColor:J

    .line 193
    .line 194
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->selectedOverlineContentColor:J

    .line 195
    .line 196
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_12

    .line 201
    .line 202
    return v1

    .line 203
    :cond_12
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedSupportingContentColor:J

    .line 204
    .line 205
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->selectedSupportingContentColor:J

    .line 206
    .line 207
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-nez v2, :cond_13

    .line 212
    .line 213
    return v1

    .line 214
    :cond_13
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedContainerColor:J

    .line 215
    .line 216
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->draggedContainerColor:J

    .line 217
    .line 218
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-nez v2, :cond_14

    .line 223
    .line 224
    return v1

    .line 225
    :cond_14
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedContentColor:J

    .line 226
    .line 227
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->draggedContentColor:J

    .line 228
    .line 229
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-nez v2, :cond_15

    .line 234
    .line 235
    return v1

    .line 236
    :cond_15
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedLeadingContentColor:J

    .line 237
    .line 238
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->draggedLeadingContentColor:J

    .line 239
    .line 240
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-nez v2, :cond_16

    .line 245
    .line 246
    return v1

    .line 247
    :cond_16
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedTrailingContentColor:J

    .line 248
    .line 249
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->draggedTrailingContentColor:J

    .line 250
    .line 251
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-nez v2, :cond_17

    .line 256
    .line 257
    return v1

    .line 258
    :cond_17
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedOverlineContentColor:J

    .line 259
    .line 260
    iget-wide v4, p1, Landroidx/compose/material3/ListItemColors;->draggedOverlineContentColor:J

    .line 261
    .line 262
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-nez v2, :cond_18

    .line 267
    .line 268
    return v1

    .line 269
    :cond_18
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedSupportingContentColor:J

    .line 270
    .line 271
    iget-wide p0, p1, Landroidx/compose/material3/ListItemColors;->draggedSupportingContentColor:J

    .line 272
    .line 273
    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-nez p0, :cond_19

    .line 278
    .line 279
    return v1

    .line 280
    :cond_19
    return v0

    .line 281
    :cond_1a
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/compose/material3/ListItemColors;->containerColor:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->contentColor:J

    .line 13
    .line 14
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->leadingContentColor:J

    .line 19
    .line 20
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->trailingContentColor:J

    .line 25
    .line 26
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->overlineContentColor:J

    .line 31
    .line 32
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->supportingContentColor:J

    .line 37
    .line 38
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledContainerColor:J

    .line 43
    .line 44
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledContentColor:J

    .line 49
    .line 50
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledLeadingContentColor:J

    .line 55
    .line 56
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledTrailingContentColor:J

    .line 61
    .line 62
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledOverlineContentColor:J

    .line 67
    .line 68
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->disabledSupportingContentColor:J

    .line 73
    .line 74
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedContainerColor:J

    .line 79
    .line 80
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedContentColor:J

    .line 85
    .line 86
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedLeadingContentColor:J

    .line 91
    .line 92
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedTrailingContentColor:J

    .line 97
    .line 98
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedOverlineContentColor:J

    .line 103
    .line 104
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->selectedSupportingContentColor:J

    .line 109
    .line 110
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedContainerColor:J

    .line 115
    .line 116
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedContentColor:J

    .line 121
    .line 122
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedLeadingContentColor:J

    .line 127
    .line 128
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedTrailingContentColor:J

    .line 133
    .line 134
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-wide v2, p0, Landroidx/compose/material3/ListItemColors;->draggedOverlineContentColor:J

    .line 139
    .line 140
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IJI)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iget-wide v1, p0, Landroidx/compose/material3/ListItemColors;->draggedSupportingContentColor:J

    .line 145
    .line 146
    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    add-int/2addr p0, v0

    .line 151
    return p0
.end method

.method public final leadingContentColor-XeAY9LY(ZZZ)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->disabledLeadingContentColor:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    if-eqz p3, :cond_1

    .line 7
    .line 8
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->draggedLeadingContentColor:J

    .line 9
    .line 10
    return-wide p0

    .line 11
    :cond_1
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->selectedLeadingContentColor:J

    .line 14
    .line 15
    return-wide p0

    .line 16
    :cond_2
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->leadingContentColor:J

    .line 17
    .line 18
    return-wide p0
.end method

.method public final overlineContentColor-XeAY9LY(ZZZ)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->disabledOverlineContentColor:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    if-eqz p3, :cond_1

    .line 7
    .line 8
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->draggedOverlineContentColor:J

    .line 9
    .line 10
    return-wide p0

    .line 11
    :cond_1
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->selectedOverlineContentColor:J

    .line 14
    .line 15
    return-wide p0

    .line 16
    :cond_2
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->overlineContentColor:J

    .line 17
    .line 18
    return-wide p0
.end method

.method public final supportingContentColor-XeAY9LY(ZZZ)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->disabledSupportingContentColor:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    if-eqz p3, :cond_1

    .line 7
    .line 8
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->draggedSupportingContentColor:J

    .line 9
    .line 10
    return-wide p0

    .line 11
    :cond_1
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->selectedSupportingContentColor:J

    .line 14
    .line 15
    return-wide p0

    .line 16
    :cond_2
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->supportingContentColor:J

    .line 17
    .line 18
    return-wide p0
.end method

.method public final trailingContentColor-XeAY9LY(ZZZ)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->disabledTrailingContentColor:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    if-eqz p3, :cond_1

    .line 7
    .line 8
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->draggedTrailingContentColor:J

    .line 9
    .line 10
    return-wide p0

    .line 11
    :cond_1
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->selectedTrailingContentColor:J

    .line 14
    .line 15
    return-wide p0

    .line 16
    :cond_2
    iget-wide p0, p0, Landroidx/compose/material3/ListItemColors;->trailingContentColor:J

    .line 17
    .line 18
    return-wide p0
.end method
