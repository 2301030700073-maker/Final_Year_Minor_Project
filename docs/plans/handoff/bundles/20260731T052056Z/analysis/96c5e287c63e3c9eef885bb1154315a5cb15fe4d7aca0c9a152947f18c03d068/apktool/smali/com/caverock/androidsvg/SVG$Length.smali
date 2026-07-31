.class public final Lcom/caverock/androidsvg/SVG$Length;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final unit:Lcom/caverock/androidsvg/SVG$Unit;

.field public final value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 5
    .line 6
    sget-object p1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 13
    iput-object p2, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method


# virtual methods
.method public final floatValue()F
    .locals 2

    .line 60
    sget-object v0, Lcom/caverock/androidsvg/SVG$1;->$SwitchMap$com$caverock$androidsvg$SVG$Unit:[I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x42c00000    # 96.0f

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-float/2addr p0, v1

    const/high16 v0, 0x40c00000    # 6.0f

    :goto_0
    div-float/2addr p0, v0

    return p0

    :pswitch_1
    mul-float/2addr p0, v1

    const/high16 v0, 0x42900000    # 72.0f

    goto :goto_0

    :pswitch_2
    mul-float/2addr p0, v1

    const v0, 0x41cb3333    # 25.4f

    goto :goto_0

    :pswitch_3
    mul-float/2addr p0, v1

    const v0, 0x40228f5c    # 2.54f

    goto :goto_0

    :pswitch_4
    mul-float/2addr p0, v1

    :cond_0
    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 2
    .line 3
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    .line 4
    .line 5
    if-ne v0, v1, :cond_3

    .line 6
    .line 7
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 17
    .line 18
    :goto_0
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    iget p1, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 24
    .line 25
    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 26
    .line 27
    cmpl-float v1, p1, v0

    .line 28
    .line 29
    const/high16 v2, 0x42c80000    # 100.0f

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    :goto_1
    mul-float/2addr p0, p1

    .line 34
    div-float/2addr p0, v2

    .line 35
    return p0

    .line 36
    :cond_2
    mul-float/2addr p1, p1

    .line 37
    mul-float/2addr v0, v0

    .line 38
    add-float/2addr v0, p1

    .line 39
    float-to-double v0, v0

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    const-wide v3, 0x3ff6a09e667f3bccL    # 1.414213562373095

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    div-double/2addr v0, v3

    .line 50
    double-to-float p1, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public final floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_0

    .line 58
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr p0, p2

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result p0

    return p0
.end method

.method public final floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 2

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/SVG$1;->$SwitchMap$com$caverock$androidsvg$SVG$Unit:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/high16 v1, 0x42c00000    # 96.0f

    .line 12
    .line 13
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :pswitch_0
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 29
    .line 30
    :goto_0
    if-nez v0, :cond_1

    .line 31
    .line 32
    :goto_1
    return p0

    .line 33
    :cond_1
    iget p1, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 34
    .line 35
    mul-float/2addr p0, p1

    .line 36
    const/high16 p1, 0x42c80000    # 100.0f

    .line 37
    .line 38
    div-float/2addr p0, p1

    .line 39
    return p0

    .line 40
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    mul-float/2addr p0, v1

    .line 44
    const/high16 p1, 0x40c00000    # 6.0f

    .line 45
    .line 46
    div-float/2addr p0, p1

    .line 47
    return p0

    .line 48
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    mul-float/2addr p0, v1

    .line 52
    const/high16 p1, 0x42900000    # 72.0f

    .line 53
    .line 54
    div-float/2addr p0, p1

    .line 55
    return p0

    .line 56
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    mul-float/2addr p0, v1

    .line 60
    const p1, 0x41cb3333    # 25.4f

    .line 61
    .line 62
    .line 63
    div-float/2addr p0, p1

    .line 64
    return p0

    .line 65
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    mul-float/2addr p0, v1

    .line 69
    const p1, 0x40228f5c    # 2.54f

    .line 70
    .line 71
    .line 72
    div-float/2addr p0, p1

    .line 73
    return p0

    .line 74
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    mul-float/2addr p0, v1

    .line 78
    return p0

    .line 79
    :pswitch_6
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/high16 v0, 0x40000000    # 2.0f

    .line 90
    .line 91
    div-float/2addr p1, v0

    .line 92
    :goto_2
    mul-float/2addr p1, p0

    .line 93
    return p1

    .line 94
    :pswitch_7
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    goto :goto_2

    .line 105
    :pswitch_data_0
    .packed-switch 0x2
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

.method public final floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 2
    .line 3
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 17
    .line 18
    :goto_0
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    iget p1, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 24
    .line 25
    mul-float/2addr p0, p1

    .line 26
    const/high16 p1, 0x42c80000    # 100.0f

    .line 27
    .line 28
    div-float/2addr p0, p1

    .line 29
    return p0

    .line 30
    :cond_2
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final isNegative()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpg-float p0, p0, v0

    .line 5
    .line 6
    if-gez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final isZero()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpl-float p0, p0, v0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
