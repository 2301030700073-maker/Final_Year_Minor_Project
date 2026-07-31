.class public final synthetic Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/graphics/Canvas;

.field public final synthetic f$4:Landroid/graphics/Paint;

.field public final synthetic f$5:I

.field public final synthetic f$6:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/platform/style/CustomBulletSpan;JILandroid/graphics/Canvas;Landroid/graphics/Paint;IF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$1:J

    .line 5
    .line 6
    iput p4, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    .line 8
    iput-object p5, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Canvas;

    .line 9
    .line 10
    iput-object p6, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput p7, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$5:I

    .line 13
    .line 14
    iput p8, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$6:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/high16 v4, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v3, v4

    .line 12
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    int-to-long v5, v5

    .line 17
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-long v7, v3

    .line 22
    const/16 v3, 0x20

    .line 23
    .line 24
    shl-long/2addr v5, v3

    .line 25
    const-wide v9, 0xffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr v7, v9

    .line 31
    or-long v14, v5, v7

    .line 32
    .line 33
    new-instance v5, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 34
    .line 35
    const-wide/16 v6, 0x0

    .line 36
    .line 37
    invoke-static {v6, v7, v1, v2}, Lcoil3/util/UtilsKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v9, Landroidx/compose/ui/geometry/RoundRect;

    .line 42
    .line 43
    iget v10, v1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 44
    .line 45
    iget v11, v1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 46
    .line 47
    iget v12, v1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 48
    .line 49
    iget v13, v1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 50
    .line 51
    move-wide/from16 v16, v14

    .line 52
    .line 53
    move-wide/from16 v18, v14

    .line 54
    .line 55
    move-wide/from16 v20, v14

    .line 56
    .line 57
    invoke-direct/range {v9 .. v21}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v5, v9}, Landroidx/compose/ui/graphics/Outline$Rounded;-><init>(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 61
    .line 62
    .line 63
    iget v1, v0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$5:I

    .line 64
    .line 65
    int-to-float v1, v1

    .line 66
    iget-object v2, v0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Canvas;

    .line 67
    .line 68
    iget-object v5, v0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Paint;

    .line 69
    .line 70
    iget v6, v0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$6:F

    .line 71
    .line 72
    invoke-static {v9}, Lkotlin/text/RegexKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_0

    .line 77
    .line 78
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0, v9}, Landroidx/compose/ui/Modifier$-CC;->addRoundRect$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/RoundRect;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    div-float/2addr v3, v4

    .line 93
    sub-float/2addr v6, v3

    .line 94
    invoke-virtual {v2, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 98
    .line 99
    invoke-virtual {v2, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    shr-long v7, v14, v3

    .line 107
    .line 108
    long-to-int v3, v7

    .line 109
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 110
    .line 111
    .line 112
    move-result v21

    .line 113
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    div-float/2addr v3, v4

    .line 118
    sub-float v18, v6, v3

    .line 119
    .line 120
    iget v0, v0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan$$ExternalSyntheticLambda0;->f$2:I

    .line 121
    .line 122
    int-to-float v0, v0

    .line 123
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    mul-float/2addr v3, v0

    .line 128
    add-float v19, v3, v1

    .line 129
    .line 130
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    div-float/2addr v0, v4

    .line 135
    add-float v20, v0, v6

    .line 136
    .line 137
    move/from16 v22, v21

    .line 138
    .line 139
    move/from16 v17, v1

    .line 140
    .line 141
    move-object/from16 v16, v2

    .line 142
    .line 143
    move-object/from16 v23, v5

    .line 144
    .line 145
    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 146
    .line 147
    .line 148
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 149
    .line 150
    return-object v0
.end method
