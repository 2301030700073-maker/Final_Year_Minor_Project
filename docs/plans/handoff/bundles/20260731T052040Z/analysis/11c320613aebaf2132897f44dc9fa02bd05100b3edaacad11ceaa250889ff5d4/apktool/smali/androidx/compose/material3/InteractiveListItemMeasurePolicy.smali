.class public final Landroidx/compose/material3/InteractiveListItemMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/layout/MultiContentMeasurePolicy;


# instance fields
.field public final verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/InteractiveListItemMeasurePolicy;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 5
    .line 6
    return-void
.end method

.method public static calculateIntrinsicHeight(Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/util/List;

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 41
    .line 42
    const v5, 0x7fffffff

    .line 43
    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-interface {p2, v1, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-interface {v1, v5}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-static {p1, v1}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v6, v0

    .line 71
    :goto_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/Number;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-interface {v1, v5}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {p1, v1}, Landroidx/compose/material3/internal/LayoutUtilKt;->subtractConstraintSafely(II)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    move v2, v0

    .line 103
    :goto_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 108
    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-interface {p2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Ljava/lang/Number;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    move v1, v0

    .line 127
    :goto_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 132
    .line 133
    if-eqz v3, :cond_3

    .line 134
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-interface {p2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Ljava/lang/Number;

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    goto :goto_3

    .line 150
    :cond_3
    move v3, v0

    .line 151
    :goto_3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    check-cast p0, Landroidx/compose/ui/layout/Measurable;

    .line 156
    .line 157
    if-eqz p0, :cond_4

    .line 158
    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p2, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Ljava/lang/Number;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    goto :goto_4

    .line 174
    :cond_4
    move p0, v0

    .line 175
    :goto_4
    const/16 p1, 0xf

    .line 176
    .line 177
    invoke-static {v0, v0, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    .line 178
    .line 179
    .line 180
    move-result-wide p1

    .line 181
    add-int/2addr p0, v1

    .line 182
    add-int/2addr p0, v3

    .line 183
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    return p0
.end method

.method public static calculateIntrinsicWidth(Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/util/List;

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {p2, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Number;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v1, v0

    .line 60
    :goto_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {p2, v2, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move v2, v0

    .line 84
    :goto_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 89
    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-interface {p2, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move v3, v0

    .line 108
    :goto_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 113
    .line 114
    if-eqz v4, :cond_3

    .line 115
    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-interface {p2, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Ljava/lang/Number;

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    move v4, v0

    .line 132
    :goto_3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Landroidx/compose/ui/layout/Measurable;

    .line 137
    .line 138
    if-eqz p0, :cond_4

    .line 139
    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-interface {p2, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Ljava/lang/Number;

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    goto :goto_4

    .line 155
    :cond_4
    move p0, v0

    .line 156
    :goto_4
    const/16 p1, 0xf

    .line 157
    .line 158
    invoke-static {v0, v0, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    .line 159
    .line 160
    .line 161
    move-result-wide p1

    .line 162
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_5

    .line 167
    .line 168
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    return p0

    .line 173
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    add-int/2addr p0, v1

    .line 182
    add-int/2addr p0, v2

    .line 183
    return p0
.end method


# virtual methods
.method public final maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/material3/InteractiveListItemMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/InteractiveListItemMeasurePolicy$maxIntrinsicHeight$1;

    .line 2
    .line 3
    check-cast p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p2, p3, p0}, Landroidx/compose/material3/InteractiveListItemMeasurePolicy;->calculateIntrinsicHeight(Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I

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
    sget-object p0, Landroidx/compose/material3/InteractiveListItemMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/InteractiveListItemMeasurePolicy$maxIntrinsicWidth$1;

    .line 2
    .line 3
    check-cast p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p2, p3, p0}, Landroidx/compose/material3/InteractiveListItemMeasurePolicy;->calculateIntrinsicWidth(Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Ljava/util/List;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/util/List;

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/util/List;

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Ljava/util/List;

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/List;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const/16 v11, 0xa

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    move-wide/from16 v9, p3

    .line 46
    .line 47
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(IIIJI)J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    invoke-interface {v2, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    move-object v10, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-object v10, v8

    .line 67
    :goto_0
    if-eqz v10, :cond_1

    .line 68
    .line 69
    iget v2, v10, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v2, v1

    .line 73
    :goto_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    neg-int v9, v2

    .line 82
    invoke-static {v9, v6, v7, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 83
    .line 84
    .line 85
    move-result-wide v11

    .line 86
    invoke-interface {v3, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move-object v3, v8

    .line 92
    :goto_2
    if-eqz v3, :cond_3

    .line 93
    .line 94
    iget v9, v3, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    move v9, v1

    .line 98
    :goto_3
    add-int/2addr v2, v9

    .line 99
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 104
    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    neg-int v9, v2

    .line 108
    invoke-static {v9, v6, v7, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 109
    .line 110
    .line 111
    move-result-wide v11

    .line 112
    invoke-interface {v4, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    move-object v14, v4

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    move-object v14, v8

    .line 119
    :goto_4
    if-eqz v14, :cond_5

    .line 120
    .line 121
    iget v4, v14, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_5
    move v4, v1

    .line 125
    :goto_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    neg-int v9, v2

    .line 134
    neg-int v11, v4

    .line 135
    invoke-static {v9, v6, v7, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 136
    .line 137
    .line 138
    move-result-wide v11

    .line 139
    invoke-interface {v0, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move-object v13, v0

    .line 144
    goto :goto_6

    .line 145
    :cond_6
    move-object v13, v8

    .line 146
    :goto_6
    if-eqz v13, :cond_7

    .line 147
    .line 148
    iget v0, v13, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_7
    move v0, v1

    .line 152
    :goto_7
    add-int/2addr v4, v0

    .line 153
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 158
    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    neg-int v2, v2

    .line 162
    neg-int v4, v4

    .line 163
    invoke-static {v2, v6, v7, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IJI)J

    .line 164
    .line 165
    .line 166
    move-result-wide v4

    .line 167
    invoke-interface {v0, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    :cond_8
    move-object v15, v8

    .line 172
    if-eqz v10, :cond_9

    .line 173
    .line 174
    iget v0, v10, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_9
    move v0, v1

    .line 178
    :goto_8
    if-eqz v3, :cond_a

    .line 179
    .line 180
    iget v2, v3, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 181
    .line 182
    goto :goto_9

    .line 183
    :cond_a
    move v2, v1

    .line 184
    :goto_9
    if-eqz v14, :cond_b

    .line 185
    .line 186
    iget v4, v14, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 187
    .line 188
    goto :goto_a

    .line 189
    :cond_b
    move v4, v1

    .line 190
    :goto_a
    if-eqz v15, :cond_c

    .line 191
    .line 192
    iget v5, v15, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 193
    .line 194
    goto :goto_b

    .line 195
    :cond_c
    move v5, v1

    .line 196
    :goto_b
    if-eqz v13, :cond_d

    .line 197
    .line 198
    iget v6, v13, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 199
    .line 200
    goto :goto_c

    .line 201
    :cond_d
    move v6, v1

    .line 202
    :goto_c
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-eqz v7, :cond_e

    .line 207
    .line 208
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    :goto_d
    move/from16 v17, v0

    .line 213
    .line 214
    goto :goto_e

    .line 215
    :cond_e
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    add-int/2addr v4, v0

    .line 224
    add-int v0, v4, v2

    .line 225
    .line 226
    goto :goto_d

    .line 227
    :goto_e
    if-eqz v10, :cond_f

    .line 228
    .line 229
    iget v0, v10, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 230
    .line 231
    goto :goto_f

    .line 232
    :cond_f
    move v0, v1

    .line 233
    :goto_f
    if-eqz v3, :cond_10

    .line 234
    .line 235
    iget v2, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 236
    .line 237
    goto :goto_10

    .line 238
    :cond_10
    move v2, v1

    .line 239
    :goto_10
    if-eqz v14, :cond_11

    .line 240
    .line 241
    iget v4, v14, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 242
    .line 243
    goto :goto_11

    .line 244
    :cond_11
    move v4, v1

    .line 245
    :goto_11
    if-eqz v15, :cond_12

    .line 246
    .line 247
    iget v5, v15, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 248
    .line 249
    goto :goto_12

    .line 250
    :cond_12
    move v5, v1

    .line 251
    :goto_12
    if-eqz v13, :cond_13

    .line 252
    .line 253
    iget v1, v13, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 254
    .line 255
    :cond_13
    add-int/2addr v1, v4

    .line 256
    add-int/2addr v1, v5

    .line 257
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    move-wide/from16 v1, p3

    .line 266
    .line 267
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    new-instance v9, Landroidx/compose/material3/InteractiveListItemMeasurePolicy$$ExternalSyntheticLambda0;

    .line 272
    .line 273
    move-object/from16 v11, p0

    .line 274
    .line 275
    move-object/from16 v16, v3

    .line 276
    .line 277
    invoke-direct/range {v9 .. v17}, Landroidx/compose/material3/InteractiveListItemMeasurePolicy$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/InteractiveListItemMeasurePolicy;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;I)V

    .line 278
    .line 279
    .line 280
    move/from16 v0, v17

    .line 281
    .line 282
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 283
    .line 284
    move-object/from16 v2, p1

    .line 285
    .line 286
    invoke-interface {v2, v0, v12, v1, v9}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    return-object v0
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/material3/InteractiveListItemMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material3/InteractiveListItemMeasurePolicy$minIntrinsicHeight$1;

    .line 2
    .line 3
    check-cast p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p2, p3, p0}, Landroidx/compose/material3/InteractiveListItemMeasurePolicy;->calculateIntrinsicHeight(Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I

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
    sget-object p0, Landroidx/compose/material3/InteractiveListItemMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/InteractiveListItemMeasurePolicy$minIntrinsicWidth$1;

    .line 2
    .line 3
    check-cast p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p2, p3, p0}, Landroidx/compose/material3/InteractiveListItemMeasurePolicy;->calculateIntrinsicWidth(Ljava/util/ArrayList;ILkotlin/jvm/functions/Function2;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
