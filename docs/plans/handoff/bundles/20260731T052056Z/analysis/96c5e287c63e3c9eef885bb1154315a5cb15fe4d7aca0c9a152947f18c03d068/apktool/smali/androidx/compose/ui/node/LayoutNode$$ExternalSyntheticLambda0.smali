.class public final synthetic Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    instance-of p0, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    instance-of p0, p2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 16
    .line 17
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingList;->getAccentInvariantTitle()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->getAccentInvariantTitle()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_0
    return v0

    .line 32
    :pswitch_0
    instance-of p0, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    instance-of p0, p2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 41
    .line 42
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->getAccentInvariantTitle()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 47
    .line 48
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingList;->getAccentInvariantTitle()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :cond_1
    return v0

    .line 57
    :pswitch_1
    instance-of p0, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    instance-of p0, p2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 66
    .line 67
    iget-wide p0, p1, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 68
    .line 69
    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 70
    .line 71
    iget-wide v0, p2, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 72
    .line 73
    invoke-static {p0, p1, v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :cond_2
    return v0

    .line 78
    :pswitch_2
    instance-of p0, p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 79
    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    instance-of p0, p2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 83
    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    check-cast p2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 87
    .line 88
    iget-wide v0, p2, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 89
    .line 90
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 91
    .line 92
    iget-wide p0, p1, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 93
    .line 94
    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    :cond_3
    return v0

    .line 99
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 100
    .line 101
    check-cast p2, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    sub-int/2addr p0, p1

    .line 112
    return p0

    .line 113
    :pswitch_4
    check-cast p1, [B

    .line 114
    .line 115
    check-cast p2, [B

    .line 116
    .line 117
    array-length p0, p1

    .line 118
    array-length v1, p2

    .line 119
    if-eq p0, v1, :cond_4

    .line 120
    .line 121
    array-length p0, p1

    .line 122
    array-length p1, p2

    .line 123
    sub-int v0, p0, p1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    move p0, v0

    .line 127
    :goto_0
    array-length v1, p1

    .line 128
    if-ge p0, v1, :cond_6

    .line 129
    .line 130
    aget-byte v1, p1, p0

    .line 131
    .line 132
    aget-byte v2, p2, p0

    .line 133
    .line 134
    if-eq v1, v2, :cond_5

    .line 135
    .line 136
    sub-int v0, v1, v2

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    add-int/lit8 p0, p0, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_6
    :goto_1
    return v0

    .line 143
    :pswitch_5
    check-cast p1, Lkotlin/ranges/IntRange;

    .line 144
    .line 145
    check-cast p2, Lkotlin/ranges/IntRange;

    .line 146
    .line 147
    iget p0, p1, Lkotlin/ranges/IntProgression;->last:I

    .line 148
    .line 149
    iget p1, p1, Lkotlin/ranges/IntProgression;->first:I

    .line 150
    .line 151
    sub-int/2addr p0, p1

    .line 152
    iget p1, p2, Lkotlin/ranges/IntProgression;->last:I

    .line 153
    .line 154
    iget p2, p2, Lkotlin/ranges/IntProgression;->first:I

    .line 155
    .line 156
    sub-int/2addr p1, p2

    .line 157
    sub-int/2addr p0, p1

    .line 158
    return p0

    .line 159
    :pswitch_6
    check-cast p1, Landroidx/compose/runtime/Invalidation;

    .line 160
    .line 161
    check-cast p2, Landroidx/compose/runtime/Invalidation;

    .line 162
    .line 163
    iget p0, p1, Landroidx/compose/runtime/Invalidation;->location:I

    .line 164
    .line 165
    iget p1, p2, Landroidx/compose/runtime/Invalidation;->location:I

    .line 166
    .line 167
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    return p0

    .line 172
    :pswitch_7
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 173
    .line 174
    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 175
    .line 176
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    return p0

    .line 189
    :pswitch_8
    check-cast p1, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 190
    .line 191
    check-cast p2, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 192
    .line 193
    iget p0, p2, Landroidx/compose/foundation/lazy/layout/PriorityTask;->priority:I

    .line 194
    .line 195
    iget p1, p1, Landroidx/compose/foundation/lazy/layout/PriorityTask;->priority:I

    .line 196
    .line 197
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    return p0

    .line 202
    :pswitch_9
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 203
    .line 204
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    .line 205
    .line 206
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 207
    .line 208
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 209
    .line 210
    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->zIndex:F

    .line 211
    .line 212
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 213
    .line 214
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 215
    .line 216
    iget v0, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->zIndex:F

    .line 217
    .line 218
    cmpg-float v1, p0, v0

    .line 219
    .line 220
    if-nez v1, :cond_7

    .line 221
    .line 222
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    goto :goto_2

    .line 235
    :cond_7
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    :goto_2
    return p0

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
