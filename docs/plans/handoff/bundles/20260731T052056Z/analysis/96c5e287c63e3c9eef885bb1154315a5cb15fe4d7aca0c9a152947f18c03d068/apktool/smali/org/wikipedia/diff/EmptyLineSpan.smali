.class public final Lorg/wikipedia/diff/EmptyLineSpan;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# instance fields
.field public final fillColor:I

.field public final strokeColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/diff/EmptyLineSpan;->fillColor:I

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/diff/EmptyLineSpan;->strokeColor:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/high16 v3, 0x3f000000    # 0.5f

    .line 19
    .line 20
    invoke-static {v3}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/high16 v4, 0x41000000    # 8.0f

    .line 25
    .line 26
    invoke-static {v4}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 31
    .line 32
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    .line 34
    .line 35
    iget v5, p0, Lorg/wikipedia/diff/EmptyLineSpan;->fillColor:I

    .line 36
    .line 37
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    .line 40
    int-to-float v5, p3

    .line 41
    add-float/2addr v5, v3

    .line 42
    int-to-float v6, p5

    .line 43
    add-float/2addr v6, v3

    .line 44
    int-to-float v7, p4

    .line 45
    sub-float/2addr v7, v3

    .line 46
    move/from16 v3, p7

    .line 47
    .line 48
    int-to-float v3, v3

    .line 49
    const/high16 v8, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float v8, v4, v8

    .line 52
    .line 53
    add-float/2addr v8, v3

    .line 54
    move v3, v4

    .line 55
    move-object p3, p1

    .line 56
    move-object/from16 p10, p2

    .line 57
    .line 58
    move/from16 p9, v3

    .line 59
    .line 60
    move/from16 p8, v4

    .line 61
    .line 62
    move p4, v5

    .line 63
    move p5, v6

    .line 64
    move p6, v7

    .line 65
    move/from16 p7, v8

    .line 66
    .line 67
    invoke-virtual/range {p3 .. p10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 68
    .line 69
    .line 70
    move/from16 v3, p8

    .line 71
    .line 72
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 73
    .line 74
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    .line 76
    .line 77
    iget v0, p0, Lorg/wikipedia/diff/EmptyLineSpan;->strokeColor:I

    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    .line 81
    .line 82
    move v0, v3

    .line 83
    move/from16 p9, v0

    .line 84
    .line 85
    invoke-virtual/range {p3 .. p10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
