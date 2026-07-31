.class public final Landroidx/compose/material3/ListItemMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;


# direct methods
.method public static calculateIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I
    .locals 14

    .line 1
    move-object/from16 v2, p3

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v4

    .line 8
    check-cast v4, Ljava/util/List;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    check-cast v6, Ljava/util/List;

    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    check-cast v8, Ljava/util/List;

    .line 23
    .line 24
    const/4 v9, 0x3

    .line 25
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    check-cast v10, Ljava/util/List;

    .line 30
    .line 31
    const/4 v11, 0x4

    .line 32
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/List;

    .line 37
    .line 38
    sget v11, Landroidx/compose/material3/ListItemKt;->InteractiveListStartPadding:F

    .line 39
    .line 40
    const/high16 v11, 0x42000000    # 32.0f

    .line 41
    .line 42
    invoke-interface {p0, v11}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    move/from16 v12, p2

    .line 47
    .line 48
    invoke-static {v12, v11}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 57
    .line 58
    const v12, 0x7fffffff

    .line 59
    .line 60
    .line 61
    if-eqz v10, :cond_0

    .line 62
    .line 63
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    invoke-interface {v2, v10, v13}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    check-cast v13, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    invoke-interface {v10, v12}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    invoke-static {v11, v10}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    move v13, v3

    .line 87
    :goto_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-interface {v2, v1, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    check-cast v10, Ljava/lang/Number;

    .line 104
    .line 105
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    invoke-interface {v1, v12}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static {v11, v1}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    goto :goto_1

    .line 118
    :cond_1
    move v10, v3

    .line 119
    :goto_1
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 124
    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-interface {v2, v1, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Ljava/lang/Number;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    move v1, v3

    .line 143
    :goto_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 148
    .line 149
    if-eqz v4, :cond_3

    .line 150
    .line 151
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-interface {v2, v4, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Ljava/lang/Number;

    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    goto :goto_3

    .line 166
    :cond_3
    move v4, v3

    .line 167
    :goto_3
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 172
    .line 173
    if-eqz v6, :cond_4

    .line 174
    .line 175
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-interface {v2, v6, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Ljava/lang/Number;

    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    goto :goto_4

    .line 190
    :cond_4
    move v2, v3

    .line 191
    :goto_4
    const/16 v6, 0x1e

    .line 192
    .line 193
    invoke-static {v6}, Lkotlin/math/MathKt;->getSp(I)J

    .line 194
    .line 195
    .line 196
    move-result-wide v11

    .line 197
    invoke-interface {p0, v11, v12}, Landroidx/compose/ui/unit/Density;->roundToPx--R2X_6o(J)I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-le v2, v6, :cond_5

    .line 202
    .line 203
    move v6, v5

    .line 204
    goto :goto_5

    .line 205
    :cond_5
    move v6, v3

    .line 206
    :goto_5
    if-lez v1, :cond_6

    .line 207
    .line 208
    move v8, v5

    .line 209
    goto :goto_6

    .line 210
    :cond_6
    move v8, v3

    .line 211
    :goto_6
    if-lez v2, :cond_7

    .line 212
    .line 213
    move v11, v5

    .line 214
    goto :goto_7

    .line 215
    :cond_7
    move v11, v3

    .line 216
    :goto_7
    if-eqz v8, :cond_8

    .line 217
    .line 218
    if-nez v11, :cond_9

    .line 219
    .line 220
    :cond_8
    if-eqz v6, :cond_a

    .line 221
    .line 222
    :cond_9
    move v6, v9

    .line 223
    goto :goto_9

    .line 224
    :cond_a
    if-nez v8, :cond_c

    .line 225
    .line 226
    if-eqz v11, :cond_b

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_b
    move v6, v5

    .line 230
    goto :goto_9

    .line 231
    :cond_c
    :goto_8
    move v6, v7

    .line 232
    :goto_9
    if-ne v6, v9, :cond_d

    .line 233
    .line 234
    const/high16 v5, 0x41400000    # 12.0f

    .line 235
    .line 236
    goto :goto_a

    .line 237
    :cond_d
    const/high16 v5, 0x41000000    # 8.0f

    .line 238
    .line 239
    :goto_a
    const/high16 v7, 0x40000000    # 2.0f

    .line 240
    .line 241
    mul-float/2addr v5, v7

    .line 242
    invoke-interface {p0, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    const/16 v5, 0xf

    .line 247
    .line 248
    invoke-static {v3, v3, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    .line 249
    .line 250
    .line 251
    move-result-wide v8

    .line 252
    move-object v0, p0

    .line 253
    move v5, v2

    .line 254
    move v3, v4

    .line 255
    move v2, v10

    .line 256
    move v4, v1

    .line 257
    move v1, v13

    .line 258
    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/ListItemKt;->access$calculateHeight-N4Jib3Y(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIJ)I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    return v0
.end method

.method public static calculateIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Ljava/util/List;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/util/List;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ljava/util/List;

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/util/List;

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/util/List;

    .line 35
    .line 36
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {p3, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/Number;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v4, v0

    .line 60
    :goto_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroidx/compose/ui/layout/Measurable;

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {p3, p1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move p1, v0

    .line 84
    :goto_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-interface {p3, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move v1, v0

    .line 108
    :goto_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 113
    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-interface {p3, v2, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/Number;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    move v2, v0

    .line 132
    :goto_3
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 137
    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-interface {p3, v3, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    goto :goto_4

    .line 155
    :cond_4
    move p2, v0

    .line 156
    :goto_4
    sget p3, Landroidx/compose/material3/ListItemKt;->InteractiveListStartPadding:F

    .line 157
    .line 158
    const/high16 p3, 0x42000000    # 32.0f

    .line 159
    .line 160
    invoke-interface {p0, p3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    const/16 p3, 0xf

    .line 165
    .line 166
    invoke-static {v0, v0, p3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    if-eqz p3, :cond_5

    .line 175
    .line 176
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    return p0

    .line 181
    :cond_5
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    add-int/2addr p0, v4

    .line 190
    add-int/2addr p0, p2

    .line 191
    add-int/2addr p0, p1

    .line 192
    return p0
.end method


# virtual methods
.method public final maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/material3/ListItemMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/ListItemMeasurePolicy$maxIntrinsicHeight$1;

    .line 2
    .line 3
    check-cast p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p0}, Landroidx/compose/material3/ListItemMeasurePolicy;->calculateIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/material3/ListItemMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/ListItemMeasurePolicy$maxIntrinsicWidth$1;

    .line 2
    .line 3
    check-cast p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p0}, Landroidx/compose/material3/ListItemMeasurePolicy;->calculateIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 30

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/util/List;

    .line 13
    .line 14
    const/4 v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/util/List;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Ljava/util/List;

    .line 27
    .line 28
    const/4 v12, 0x3

    .line 29
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Ljava/util/List;

    .line 34
    .line 35
    const/4 v7, 0x4

    .line 36
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/List;

    .line 41
    .line 42
    const/4 v15, 0x0

    .line 43
    const/16 v18, 0xa

    .line 44
    .line 45
    const/4 v13, 0x0

    .line 46
    const/4 v14, 0x0

    .line 47
    move-wide/from16 v16, p3

    .line 48
    .line 49
    invoke-static/range {v13 .. v18}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(IIIJI)J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    sget v9, Landroidx/compose/material3/ListItemKt;->InteractiveListStartPadding:F

    .line 54
    .line 55
    const/high16 v9, 0x42000000    # 32.0f

    .line 56
    .line 57
    invoke-interface {v0, v9}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 66
    .line 67
    if-eqz v13, :cond_0

    .line 68
    .line 69
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    invoke-interface {v13, v14}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    move v13, v10

    .line 79
    :goto_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 84
    .line 85
    if-eqz v14, :cond_1

    .line 86
    .line 87
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    invoke-interface {v14, v15}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v14, v10

    .line 97
    :goto_1
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    add-int/2addr v13, v14

    .line 102
    add-int/2addr v13, v9

    .line 103
    invoke-static {v15, v13}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 112
    .line 113
    if-eqz v14, :cond_2

    .line 114
    .line 115
    invoke-interface {v14, v13}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    move v13, v10

    .line 121
    :goto_2
    const/16 v14, 0x1e

    .line 122
    .line 123
    invoke-static {v14}, Lkotlin/math/MathKt;->getSp(I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v14

    .line 127
    invoke-interface {v0, v14, v15}, Landroidx/compose/ui/unit/Density;->roundToPx--R2X_6o(J)I

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-le v13, v14, :cond_3

    .line 132
    .line 133
    move v13, v11

    .line 134
    goto :goto_3

    .line 135
    :cond_3
    move v13, v10

    .line 136
    :goto_3
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    if-eqz v14, :cond_4

    .line 141
    .line 142
    move v14, v11

    .line 143
    goto :goto_4

    .line 144
    :cond_4
    move v14, v10

    .line 145
    :goto_4
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    if-eqz v15, :cond_5

    .line 150
    .line 151
    move v15, v11

    .line 152
    goto :goto_5

    .line 153
    :cond_5
    move v15, v10

    .line 154
    :goto_5
    const/high16 v16, 0x41000000    # 8.0f

    .line 155
    .line 156
    const/high16 v17, 0x41400000    # 12.0f

    .line 157
    .line 158
    if-eqz v14, :cond_6

    .line 159
    .line 160
    if-nez v15, :cond_7

    .line 161
    .line 162
    :cond_6
    if-eqz v13, :cond_8

    .line 163
    .line 164
    :cond_7
    move/from16 v13, v17

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_8
    move/from16 v13, v16

    .line 168
    .line 169
    :goto_6
    const/high16 v14, 0x40000000    # 2.0f

    .line 170
    .line 171
    mul-float/2addr v13, v14

    .line 172
    invoke-interface {v0, v13}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 173
    .line 174
    .line 175
    move-result v13

    .line 176
    neg-int v15, v9

    .line 177
    neg-int v13, v13

    .line 178
    invoke-static {v15, v7, v8, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 179
    .line 180
    .line 181
    move-result-wide v7

    .line 182
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 187
    .line 188
    if-eqz v6, :cond_9

    .line 189
    .line 190
    invoke-interface {v6, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    move-object v15, v6

    .line 195
    goto :goto_7

    .line 196
    :cond_9
    const/4 v15, 0x0

    .line 197
    :goto_7
    if-eqz v15, :cond_a

    .line 198
    .line 199
    iget v6, v15, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_a
    move v6, v10

    .line 203
    :goto_8
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 208
    .line 209
    if-eqz v1, :cond_b

    .line 210
    .line 211
    neg-int v4, v6

    .line 212
    move/from16 p2, v14

    .line 213
    .line 214
    invoke-static {v4, v7, v8, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 215
    .line 216
    .line 217
    move-result-wide v13

    .line 218
    invoke-interface {v1, v13, v14}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    move-object v13, v1

    .line 223
    goto :goto_9

    .line 224
    :cond_b
    move/from16 p2, v14

    .line 225
    .line 226
    const/4 v13, 0x0

    .line 227
    :goto_9
    if-eqz v13, :cond_c

    .line 228
    .line 229
    iget v1, v13, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 230
    .line 231
    goto :goto_a

    .line 232
    :cond_c
    move v1, v10

    .line 233
    :goto_a
    add-int/2addr v6, v1

    .line 234
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 239
    .line 240
    if-eqz v1, :cond_d

    .line 241
    .line 242
    neg-int v2, v6

    .line 243
    invoke-static {v2, v7, v8, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 244
    .line 245
    .line 246
    move-result-wide v11

    .line 247
    invoke-interface {v1, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    move-object v11, v1

    .line 252
    goto :goto_b

    .line 253
    :cond_d
    const/4 v11, 0x0

    .line 254
    :goto_b
    if-eqz v11, :cond_e

    .line 255
    .line 256
    iget v1, v11, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 257
    .line 258
    goto :goto_c

    .line 259
    :cond_e
    move v1, v10

    .line 260
    :goto_c
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 265
    .line 266
    if-eqz v2, :cond_f

    .line 267
    .line 268
    neg-int v4, v6

    .line 269
    neg-int v5, v1

    .line 270
    invoke-static {v4, v7, v8, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 271
    .line 272
    .line 273
    move-result-wide v4

    .line 274
    invoke-interface {v2, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    move-object v12, v2

    .line 279
    goto :goto_d

    .line 280
    :cond_f
    const/4 v12, 0x0

    .line 281
    :goto_d
    if-eqz v12, :cond_10

    .line 282
    .line 283
    iget v2, v12, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 284
    .line 285
    goto :goto_e

    .line 286
    :cond_10
    move v2, v10

    .line 287
    :goto_e
    add-int/2addr v1, v2

    .line 288
    if-eqz v12, :cond_11

    .line 289
    .line 290
    sget-object v2, Landroidx/compose/ui/layout/AlignmentLineKt;->FirstBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 291
    .line 292
    invoke-virtual {v12, v2}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    sget-object v4, Landroidx/compose/ui/layout/AlignmentLineKt;->LastBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 297
    .line 298
    invoke-virtual {v12, v4}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-eq v2, v4, :cond_11

    .line 303
    .line 304
    const/4 v2, 0x1

    .line 305
    goto :goto_f

    .line 306
    :cond_11
    move v2, v10

    .line 307
    :goto_f
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 312
    .line 313
    if-eqz v3, :cond_12

    .line 314
    .line 315
    neg-int v4, v6

    .line 316
    neg-int v1, v1

    .line 317
    invoke-static {v4, v7, v8, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 318
    .line 319
    .line 320
    move-result-wide v4

    .line 321
    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    goto :goto_10

    .line 326
    :cond_12
    const/4 v1, 0x0

    .line 327
    :goto_10
    if-eqz v1, :cond_13

    .line 328
    .line 329
    const/4 v3, 0x1

    .line 330
    goto :goto_11

    .line 331
    :cond_13
    move v3, v10

    .line 332
    :goto_11
    if-eqz v12, :cond_14

    .line 333
    .line 334
    const/4 v4, 0x1

    .line 335
    goto :goto_12

    .line 336
    :cond_14
    move v4, v10

    .line 337
    :goto_12
    if-eqz v3, :cond_15

    .line 338
    .line 339
    if-nez v4, :cond_16

    .line 340
    .line 341
    :cond_15
    if-eqz v2, :cond_17

    .line 342
    .line 343
    :cond_16
    const/4 v2, 0x3

    .line 344
    const/4 v6, 0x3

    .line 345
    goto :goto_14

    .line 346
    :cond_17
    if-nez v3, :cond_19

    .line 347
    .line 348
    if-eqz v4, :cond_18

    .line 349
    .line 350
    goto :goto_13

    .line 351
    :cond_18
    const/4 v2, 0x3

    .line 352
    const/4 v6, 0x1

    .line 353
    goto :goto_14

    .line 354
    :cond_19
    :goto_13
    const/4 v2, 0x3

    .line 355
    const/4 v6, 0x2

    .line 356
    :goto_14
    if-ne v6, v2, :cond_1a

    .line 357
    .line 358
    move/from16 v16, v17

    .line 359
    .line 360
    :cond_1a
    mul-float v2, v16, p2

    .line 361
    .line 362
    if-eqz v15, :cond_1b

    .line 363
    .line 364
    iget v3, v15, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 365
    .line 366
    goto :goto_15

    .line 367
    :cond_1b
    move v3, v10

    .line 368
    :goto_15
    if-eqz v13, :cond_1c

    .line 369
    .line 370
    iget v4, v13, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 371
    .line 372
    goto :goto_16

    .line 373
    :cond_1c
    move v4, v10

    .line 374
    :goto_16
    if-eqz v11, :cond_1d

    .line 375
    .line 376
    iget v5, v11, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 377
    .line 378
    goto :goto_17

    .line 379
    :cond_1d
    move v5, v10

    .line 380
    :goto_17
    if-eqz v1, :cond_1e

    .line 381
    .line 382
    iget v7, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 383
    .line 384
    goto :goto_18

    .line 385
    :cond_1e
    move v7, v10

    .line 386
    :goto_18
    if-eqz v12, :cond_1f

    .line 387
    .line 388
    iget v8, v12, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 389
    .line 390
    goto :goto_19

    .line 391
    :cond_1f
    move v8, v10

    .line 392
    :goto_19
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    .line 393
    .line 394
    .line 395
    move-result v17

    .line 396
    if-eqz v17, :cond_20

    .line 397
    .line 398
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    :goto_1a
    move/from16 v28, v3

    .line 403
    .line 404
    goto :goto_1b

    .line 405
    :cond_20
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    add-int/2addr v9, v3

    .line 414
    add-int/2addr v9, v5

    .line 415
    add-int v3, v9, v4

    .line 416
    .line 417
    goto :goto_1a

    .line 418
    :goto_1b
    if-eqz v15, :cond_21

    .line 419
    .line 420
    iget v3, v15, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 421
    .line 422
    goto :goto_1c

    .line 423
    :cond_21
    move v3, v10

    .line 424
    :goto_1c
    if-eqz v13, :cond_22

    .line 425
    .line 426
    iget v4, v13, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 427
    .line 428
    goto :goto_1d

    .line 429
    :cond_22
    move v4, v10

    .line 430
    :goto_1d
    if-eqz v11, :cond_23

    .line 431
    .line 432
    iget v5, v11, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 433
    .line 434
    goto :goto_1e

    .line 435
    :cond_23
    move v5, v10

    .line 436
    :goto_1e
    if-eqz v1, :cond_24

    .line 437
    .line 438
    iget v7, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 439
    .line 440
    goto :goto_1f

    .line 441
    :cond_24
    move v7, v10

    .line 442
    :goto_1f
    if-eqz v12, :cond_25

    .line 443
    .line 444
    iget v8, v12, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 445
    .line 446
    goto :goto_20

    .line 447
    :cond_25
    move v8, v10

    .line 448
    :goto_20
    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    move v9, v7

    .line 453
    move v7, v2

    .line 454
    move v2, v4

    .line 455
    move v4, v9

    .line 456
    move-object/from16 v24, v1

    .line 457
    .line 458
    move v1, v3

    .line 459
    move v3, v5

    .line 460
    move v5, v8

    .line 461
    move/from16 v10, v16

    .line 462
    .line 463
    move-wide/from16 v8, p3

    .line 464
    .line 465
    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/ListItemKt;->access$calculateHeight-N4Jib3Y(Landroidx/compose/ui/layout/IntrinsicMeasureScope;IIIIIIIJ)I

    .line 466
    .line 467
    .line 468
    move-result v26

    .line 469
    const/4 v2, 0x3

    .line 470
    if-ne v6, v2, :cond_26

    .line 471
    .line 472
    const/16 v21, 0x1

    .line 473
    .line 474
    goto :goto_21

    .line 475
    :cond_26
    const/16 v21, 0x0

    .line 476
    .line 477
    :goto_21
    const/high16 v1, 0x41800000    # 16.0f

    .line 478
    .line 479
    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 480
    .line 481
    .line 482
    move-result v20

    .line 483
    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 484
    .line 485
    .line 486
    move-result v29

    .line 487
    invoke-interface {v0, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 488
    .line 489
    .line 490
    move-result v22

    .line 491
    new-instance v18, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda8;

    .line 492
    .line 493
    move-object/from16 v23, v11

    .line 494
    .line 495
    move-object/from16 v25, v12

    .line 496
    .line 497
    move-object/from16 v27, v13

    .line 498
    .line 499
    move-object/from16 v19, v15

    .line 500
    .line 501
    invoke-direct/range {v18 .. v29}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/ui/layout/Placeable;IZILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;II)V

    .line 502
    .line 503
    .line 504
    move-object/from16 v2, v18

    .line 505
    .line 506
    move/from16 v1, v26

    .line 507
    .line 508
    move/from16 v3, v28

    .line 509
    .line 510
    sget-object v4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 511
    .line 512
    invoke-interface {v0, v3, v1, v4, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    return-object v0
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/material3/ListItemMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/ListItemMeasurePolicy$minIntrinsicHeight$1;

    .line 2
    .line 3
    check-cast p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p0}, Landroidx/compose/material3/ListItemMeasurePolicy;->calculateIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/material3/ListItemMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/ListItemMeasurePolicy$minIntrinsicWidth$1;

    .line 2
    .line 3
    check-cast p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p0}, Landroidx/compose/material3/ListItemMeasurePolicy;->calculateIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
