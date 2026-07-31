.class public final synthetic Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;->$r8$classId:I

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
    iget p0, p0, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/String;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    check-cast p2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sub-int/2addr p0, p1

    .line 37
    return p0

    .line 38
    :pswitch_2
    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 39
    .line 40
    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->$r8$lambda$whlZ864yBFEfTXV7YcBHQvRmV74(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :pswitch_3
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 48
    .line 49
    check-cast p2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    .line 50
    .line 51
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->$r8$lambda$dm4PGjkoNFYoKRqek-PcgJH9m4A(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :pswitch_4
    check-cast p1, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    .line 57
    .line 58
    check-cast p2, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    .line 59
    .line 60
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->$r8$lambda$cNqfovq9vzkHCHnDDPLBGnolVJ4(Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :pswitch_5
    check-cast p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 66
    .line 67
    check-cast p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 68
    .line 69
    iget p0, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 70
    .line 71
    iget v0, p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 72
    .line 73
    if-ge p0, v0, :cond_0

    .line 74
    .line 75
    const/4 p0, -0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    if-le p0, v0, :cond_1

    .line 78
    .line 79
    const/4 p0, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget p0, p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 82
    .line 83
    iget p1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 84
    .line 85
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    :goto_0
    return p0

    .line 90
    :pswitch_6
    check-cast p1, [B

    .line 91
    .line 92
    check-cast p2, [B

    .line 93
    .line 94
    array-length p0, p1

    .line 95
    array-length v0, p2

    .line 96
    if-eq p0, v0, :cond_2

    .line 97
    .line 98
    array-length p0, p1

    .line 99
    array-length p1, p2

    .line 100
    sub-int/2addr p0, p1

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    const/4 p0, 0x0

    .line 103
    move v0, p0

    .line 104
    :goto_1
    array-length v1, p1

    .line 105
    if-ge v0, v1, :cond_4

    .line 106
    .line 107
    aget-byte v1, p1, v0

    .line 108
    .line 109
    aget-byte v2, p2, v0

    .line 110
    .line 111
    if-eq v1, v2, :cond_3

    .line 112
    .line 113
    sub-int p0, v1, v2

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    :goto_2
    return p0

    .line 120
    :pswitch_7
    check-cast p1, Lkotlin/ranges/IntRange;

    .line 121
    .line 122
    check-cast p2, Lkotlin/ranges/IntRange;

    .line 123
    .line 124
    iget p0, p1, Lkotlin/ranges/IntProgression;->last:I

    .line 125
    .line 126
    iget p1, p1, Lkotlin/ranges/IntProgression;->first:I

    .line 127
    .line 128
    sub-int/2addr p0, p1

    .line 129
    iget p1, p2, Lkotlin/ranges/IntProgression;->last:I

    .line 130
    .line 131
    iget p2, p2, Lkotlin/ranges/IntProgression;->first:I

    .line 132
    .line 133
    sub-int/2addr p1, p2

    .line 134
    sub-int/2addr p0, p1

    .line 135
    return p0

    .line 136
    :pswitch_8
    check-cast p1, Landroidx/compose/runtime/Invalidation;

    .line 137
    .line 138
    check-cast p2, Landroidx/compose/runtime/Invalidation;

    .line 139
    .line 140
    iget p0, p1, Landroidx/compose/runtime/Invalidation;->location:I

    .line 141
    .line 142
    iget p1, p2, Landroidx/compose/runtime/Invalidation;->location:I

    .line 143
    .line 144
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    return p0

    .line 149
    :pswitch_9
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 150
    .line 151
    check-cast p2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 152
    .line 153
    iget p0, p1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 154
    .line 155
    iget p1, p2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 156
    .line 157
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    return p0

    .line 162
    :pswitch_a
    check-cast p1, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 163
    .line 164
    check-cast p2, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 165
    .line 166
    iget p0, p2, Landroidx/compose/foundation/lazy/layout/PriorityTask;->priority:I

    .line 167
    .line 168
    iget p1, p1, Landroidx/compose/foundation/lazy/layout/PriorityTask;->priority:I

    .line 169
    .line 170
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    return p0

    .line 175
    :pswitch_b
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 176
    .line 177
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    .line 178
    .line 179
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 180
    .line 181
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 182
    .line 183
    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->zIndex:F

    .line 184
    .line 185
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 186
    .line 187
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 188
    .line 189
    iget v0, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->zIndex:F

    .line 190
    .line 191
    cmpg-float v1, p0, v0

    .line 192
    .line 193
    if-nez v1, :cond_5

    .line 194
    .line 195
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    goto :goto_3

    .line 208
    :cond_5
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    :goto_3
    return p0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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
