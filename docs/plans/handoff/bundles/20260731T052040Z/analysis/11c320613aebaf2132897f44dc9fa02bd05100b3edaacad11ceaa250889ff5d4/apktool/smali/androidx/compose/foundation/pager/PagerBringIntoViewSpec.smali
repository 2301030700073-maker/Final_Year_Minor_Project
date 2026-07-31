.class public final Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/foundation/gestures/BringIntoViewSpec;


# instance fields
.field public final defaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public final pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/DefaultPagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->defaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final calculateScrollDistance(FFF)F
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollForwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->defaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 6
    .line 7
    invoke-interface {v2, p1, p2, p3}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    cmpl-float v4, p1, v3

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x1

    .line 16
    if-lez v4, :cond_0

    .line 17
    .line 18
    add-float/2addr p1, p2

    .line 19
    cmpl-float p1, p1, p3

    .line 20
    .line 21
    if-lez p1, :cond_1

    .line 22
    .line 23
    :goto_0
    move v5, v6

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-float/2addr p1, p2

    .line 26
    sget-object p2, Landroidx/compose/animation/core/VisibilityThresholdsKt;->VisibilityThresholdMap:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    const/high16 p2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    cmpg-float p1, p1, p2

    .line 31
    .line 32
    if-gtz p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    cmpg-float p1, p1, v3

    .line 40
    .line 41
    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 42
    .line 43
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 46
    .line 47
    const/high16 v6, -0x40800000    # -1.0f

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_5

    .line 52
    :cond_2
    if-eqz v5, :cond_6

    .line 53
    .line 54
    if-ne p0, p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 61
    .line 62
    if-ne p0, v4, :cond_3

    .line 63
    .line 64
    iget p0, v0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    .line 65
    .line 66
    neg-int p0, p0

    .line 67
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    add-int/2addr p1, p0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget p1, v0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    .line 74
    .line 75
    :goto_2
    int-to-float p0, p1

    .line 76
    mul-float/2addr p0, v6

    .line 77
    :goto_3
    cmpl-float p1, v2, v3

    .line 78
    .line 79
    if-lez p1, :cond_4

    .line 80
    .line 81
    cmpg-float p1, p0, v2

    .line 82
    .line 83
    if-gez p1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    int-to-float p1, p1

    .line 90
    add-float/2addr p0, p1

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    :goto_4
    cmpg-float p1, v2, v3

    .line 93
    .line 94
    if-gez p1, :cond_5

    .line 95
    .line 96
    cmpl-float p1, p0, v2

    .line 97
    .line 98
    if-lez p1, :cond_5

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    int-to-float p1, p1

    .line 105
    sub-float/2addr p0, p1

    .line 106
    goto :goto_4

    .line 107
    :cond_5
    return p0

    .line 108
    :cond_6
    :goto_5
    iget p1, v0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    .line 109
    .line 110
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    int-to-double v7, p1

    .line 115
    const-wide v9, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    cmpg-double p1, v7, v9

    .line 121
    .line 122
    if-gez p1, :cond_7

    .line 123
    .line 124
    return v3

    .line 125
    :cond_7
    if-ne p0, p2, :cond_8

    .line 126
    .line 127
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 132
    .line 133
    if-ne p1, v4, :cond_8

    .line 134
    .line 135
    iget p1, v0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    .line 136
    .line 137
    neg-int p1, p1

    .line 138
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    add-int/2addr v2, p1

    .line 143
    goto :goto_6

    .line 144
    :cond_8
    iget v2, v0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    .line 145
    .line 146
    :goto_6
    int-to-float p1, v2

    .line 147
    mul-float/2addr p1, v6

    .line 148
    if-ne p0, p2, :cond_a

    .line 149
    .line 150
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 155
    .line 156
    if-ne p0, v4, :cond_a

    .line 157
    .line 158
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    check-cast p0, Ljava/lang/Boolean;

    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_9

    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    :goto_7
    int-to-float p0, p0

    .line 176
    add-float/2addr p1, p0

    .line 177
    goto :goto_8

    .line 178
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    check-cast p0, Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-eqz p0, :cond_b

    .line 189
    .line 190
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    goto :goto_7

    .line 195
    :cond_b
    :goto_8
    neg-float p0, p3

    .line 196
    invoke-static {p1, p0, p3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    return p0
.end method

.method public final getScrollAnimationSpec()Landroidx/compose/animation/core/SpringSpec;
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultScrollAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 7
    .line 8
    return-object p0
.end method
