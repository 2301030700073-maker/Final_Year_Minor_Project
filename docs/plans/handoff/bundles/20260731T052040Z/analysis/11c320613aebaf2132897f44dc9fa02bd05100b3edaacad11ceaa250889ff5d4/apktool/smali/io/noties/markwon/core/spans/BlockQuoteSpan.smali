.class public final Lio/noties/markwon/core/spans/BlockQuoteSpan;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field public final synthetic $r8$classId:I

.field public final paint:Landroid/graphics/Paint;

.field public final rect:Landroid/graphics/Rect;

.field public final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;I)V
    .locals 0

    .line 1
    iput p2, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object p2, Lio/noties/markwon/core/spans/ObjectsPool;->RECT:Landroid/graphics/Rect;

    .line 10
    .line 11
    iput-object p2, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->rect:Landroid/graphics/Rect;

    .line 12
    .line 13
    sget-object p2, Lio/noties/markwon/core/spans/ObjectsPool;->PAINT:Landroid/graphics/Paint;

    .line 14
    .line 15
    iput-object p2, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    .line 16
    .line 17
    iput-object p1, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object p2, Lio/noties/markwon/core/spans/ObjectsPool;->RECT:Landroid/graphics/Rect;

    .line 24
    .line 25
    iput-object p2, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->rect:Landroid/graphics/Rect;

    .line 26
    .line 27
    sget-object p2, Lio/noties/markwon/core/spans/ObjectsPool;->PAINT:Landroid/graphics/Paint;

    .line 28
    .line 29
    iput-object p2, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    .line 30
    .line 31
    iput-object p1, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 1

    .line 1
    iget p6, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->$r8$classId:I

    .line 2
    .line 3
    const/16 p8, 0x19

    .line 4
    .line 5
    iget-object p9, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 6
    .line 7
    iget-object p10, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    .line 8
    .line 9
    const/high16 p11, 0x3f000000    # 0.5f

    .line 10
    .line 11
    iget-object p0, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->rect:Landroid/graphics/Rect;

    .line 12
    .line 13
    packed-switch p6, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sub-int/2addr p7, p5

    .line 17
    div-int/lit8 p7, p7, 0x2

    .line 18
    .line 19
    add-int/2addr p7, p5

    .line 20
    invoke-virtual {p10, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p10}, Landroid/graphics/Paint;->getColor()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p2, p8}, Lkotlin/text/CharsKt;->applyAlpha(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p10, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {p10, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    iget p2, p9, Lio/noties/markwon/core/MarkwonTheme;->thematicBreakHeight:I

    .line 43
    .line 44
    if-ltz p2, :cond_0

    .line 45
    .line 46
    int-to-float p2, p2

    .line 47
    invoke-virtual {p10, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {p10}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    add-float/2addr p2, p11

    .line 55
    float-to-int p2, p2

    .line 56
    int-to-float p2, p2

    .line 57
    const/high16 p5, 0x40000000    # 2.0f

    .line 58
    .line 59
    div-float/2addr p2, p5

    .line 60
    add-float/2addr p2, p11

    .line 61
    float-to-int p2, p2

    .line 62
    if-lez p4, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    sub-int p4, p3, p4

    .line 74
    .line 75
    move v0, p4

    .line 76
    move p4, p3

    .line 77
    move p3, v0

    .line 78
    :goto_0
    sub-int p5, p7, p2

    .line 79
    .line 80
    add-int/2addr p7, p2

    .line 81
    invoke-virtual {p0, p3, p5, p4, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0, p10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_0
    iget p6, p9, Lio/noties/markwon/core/MarkwonTheme;->blockQuoteWidth:I

    .line 89
    .line 90
    if-nez p6, :cond_2

    .line 91
    .line 92
    iget p6, p9, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    .line 93
    .line 94
    int-to-float p6, p6

    .line 95
    const/high16 p12, 0x3e800000    # 0.25f

    .line 96
    .line 97
    mul-float/2addr p6, p12

    .line 98
    add-float/2addr p6, p11

    .line 99
    float-to-int p6, p6

    .line 100
    :cond_2
    invoke-virtual {p10, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p10}, Landroid/graphics/Paint;->getColor()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-static {p2, p8}, Lkotlin/text/CharsKt;->applyAlpha(II)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    sget-object p8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 115
    .line 116
    invoke-virtual {p10, p8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p10, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    .line 121
    .line 122
    mul-int/2addr p4, p6

    .line 123
    add-int/2addr p3, p4

    .line 124
    add-int/2addr p4, p3

    .line 125
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    invoke-virtual {p0, p2, p5, p3, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p0, p10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getLeadingMargin(Z)I
    .locals 0

    .line 1
    iget p1, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 9
    .line 10
    iget p0, p0, Lio/noties/markwon/core/MarkwonTheme;->blockMargin:I

    .line 11
    .line 12
    return p0

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
