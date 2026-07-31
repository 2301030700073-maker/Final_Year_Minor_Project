.class public final Lio/noties/markwon/core/spans/BulletListItemSpan;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# static fields
.field public static final IS_NOUGAT:Z


# instance fields
.field public final circle:Landroid/graphics/RectF;

.field public final level:I

.field public final paint:Landroid/graphics/Paint;

.field public final rectangle:Landroid/graphics/Rect;

.field public final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-eq v1, v0, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x19

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    sput-boolean v0, Lio/noties/markwon/core/spans/BulletListItemSpan;->IS_NOUGAT:Z

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->PAINT:Landroid/graphics/Paint;

    .line 5
    .line 6
    iput-object v0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    .line 7
    .line 8
    sget-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->RECT_F:Landroid/graphics/RectF;

    .line 9
    .line 10
    iput-object v0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->circle:Landroid/graphics/RectF;

    .line 11
    .line 12
    sget-object v0, Lio/noties/markwon/core/spans/ObjectsPool;->RECT:Landroid/graphics/Rect;

    .line 13
    .line 14
    iput-object v0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->rectangle:Landroid/graphics/Rect;

    .line 15
    .line 16
    iput-object p1, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 17
    .line 18
    iput p2, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 2

    .line 1
    iget-object p5, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->circle:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object p7, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->rectangle:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz p11, :cond_7

    .line 6
    .line 7
    instance-of p10, p8, Landroid/text/Spanned;

    .line 8
    .line 9
    if-eqz p10, :cond_7

    .line 10
    .line 11
    check-cast p8, Landroid/text/Spanned;

    .line 12
    .line 13
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p8

    .line 17
    if-ne p8, p9, :cond_7

    .line 18
    .line 19
    iget-object p8, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->paint:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget p9, p2, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    .line 30
    .line 31
    invoke-virtual {p8}, Landroid/graphics/Paint;->getColor()I

    .line 32
    .line 33
    .line 34
    move-result p10

    .line 35
    invoke-virtual {p8, p10}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    iget p2, p2, Lio/noties/markwon/core/MarkwonTheme;->bulletListItemStrokeWidth:I

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    int-to-float p2, p2

    .line 43
    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    :try_start_0
    invoke-virtual {p8}, Landroid/graphics/Paint;->descent()F

    .line 51
    .line 52
    .line 53
    move-result p10

    .line 54
    invoke-virtual {p8}, Landroid/graphics/Paint;->ascent()F

    .line 55
    .line 56
    .line 57
    move-result p11

    .line 58
    sub-float/2addr p10, p11

    .line 59
    const/high16 p11, 0x3f000000    # 0.5f

    .line 60
    .line 61
    add-float/2addr p10, p11

    .line 62
    float-to-int p10, p10

    .line 63
    invoke-static {p9, p10}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result p10

    .line 67
    div-int/lit8 p10, p10, 0x2

    .line 68
    .line 69
    sub-int v0, p9, p10

    .line 70
    .line 71
    div-int/lit8 v0, v0, 0x2

    .line 72
    .line 73
    sget-boolean v1, Lio/noties/markwon/core/spans/BulletListItemSpan;->IS_NOUGAT:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    iget p0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->level:I

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    if-gez p4, :cond_1

    .line 80
    .line 81
    :try_start_1
    invoke-virtual {p12}, Landroid/text/Layout;->getWidth()I

    .line 82
    .line 83
    .line 84
    move-result p12

    .line 85
    mul-int/2addr p9, p0

    .line 86
    sub-int/2addr p12, p9

    .line 87
    sub-int p9, p3, p12

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_7

    .line 92
    :cond_1
    mul-int/2addr p9, p0

    .line 93
    sub-int/2addr p9, p3

    .line 94
    :goto_0
    mul-int/2addr v0, p4

    .line 95
    add-int/2addr v0, p3

    .line 96
    mul-int p3, p4, p10

    .line 97
    .line 98
    add-int/2addr p3, v0

    .line 99
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result p12

    .line 103
    mul-int/2addr p4, p9

    .line 104
    add-int/2addr p12, p4

    .line 105
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    add-int/2addr p3, p4

    .line 110
    goto :goto_3

    .line 111
    :cond_2
    if-lez p4, :cond_3

    .line 112
    .line 113
    :goto_1
    add-int/2addr p3, v0

    .line 114
    move p12, p3

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    sub-int/2addr p3, p9

    .line 117
    goto :goto_1

    .line 118
    :goto_2
    add-int p3, p12, p10

    .line 119
    .line 120
    :goto_3
    invoke-virtual {p8}, Landroid/graphics/Paint;->descent()F

    .line 121
    .line 122
    .line 123
    move-result p4

    .line 124
    invoke-virtual {p8}, Landroid/graphics/Paint;->ascent()F

    .line 125
    .line 126
    .line 127
    move-result p9

    .line 128
    add-float/2addr p4, p9

    .line 129
    const/high16 p9, 0x40000000    # 2.0f

    .line 130
    .line 131
    div-float/2addr p4, p9

    .line 132
    add-float/2addr p4, p11

    .line 133
    float-to-int p4, p4

    .line 134
    add-int/2addr p6, p4

    .line 135
    div-int/lit8 p4, p10, 0x2

    .line 136
    .line 137
    sub-int/2addr p6, p4

    .line 138
    add-int/2addr p10, p6

    .line 139
    if-eqz p0, :cond_5

    .line 140
    .line 141
    const/4 p4, 0x1

    .line 142
    if-ne p0, p4, :cond_4

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_4
    invoke-virtual {p7, p12, p6, p3, p10}, Landroid/graphics/Rect;->set(IIII)V

    .line 146
    .line 147
    .line 148
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 149
    .line 150
    invoke-virtual {p8, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p7, p8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 154
    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_5
    :goto_4
    int-to-float p4, p12

    .line 158
    int-to-float p6, p6

    .line 159
    int-to-float p3, p3

    .line 160
    int-to-float p7, p10

    .line 161
    invoke-virtual {p5, p4, p6, p3, p7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    .line 163
    .line 164
    if-nez p0, :cond_6

    .line 165
    .line 166
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_6
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 170
    .line 171
    :goto_5
    invoke-virtual {p8, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p5, p8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    :goto_6
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :goto_7
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :cond_7
    return-void
.end method

.method public final getLeadingMargin(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/noties/markwon/core/spans/BulletListItemSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 2
    .line 3
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    .line 4
    .line 5
    return p0
.end method
