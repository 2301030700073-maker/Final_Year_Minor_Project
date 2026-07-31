.class Lcom/horcrux/svg/FeBlendView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeBlendView.java"


# instance fields
.field mIn1:Ljava/lang/String;

.field mIn2:Ljava/lang/String;

.field mMode:Lcom/horcrux/svg/FilterProperties$FeBlendMode;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3

    .line 19
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 20
    iget-object p1, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    new-instance v0, Lcom/horcrux/svg/SVGLength;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    iput-object v0, p1, Lcom/horcrux/svg/FilterRegion;->mX:Lcom/horcrux/svg/SVGLength;

    .line 21
    iget-object p1, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    new-instance v0, Lcom/horcrux/svg/SVGLength;

    invoke-direct {v0, v1, v2}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    iput-object v0, p1, Lcom/horcrux/svg/FilterRegion;->mY:Lcom/horcrux/svg/SVGLength;

    .line 22
    iget-object p1, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    new-instance v0, Lcom/horcrux/svg/SVGLength;

    const-string v1, "100%"

    invoke-direct {v0, v1}, Lcom/horcrux/svg/SVGLength;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/horcrux/svg/FilterRegion;->mW:Lcom/horcrux/svg/SVGLength;

    .line 23
    iget-object p1, p0, Lcom/horcrux/svg/FilterPrimitiveView;->mFilterSubregion:Lcom/horcrux/svg/FilterRegion;

    new-instance v0, Lcom/horcrux/svg/SVGLength;

    invoke-direct {v0, v1}, Lcom/horcrux/svg/SVGLength;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/horcrux/svg/FilterRegion;->mH:Lcom/horcrux/svg/SVGLength;

    return-void
.end method

.method static synthetic lambda$applyFilter$0([F[F)[F
    .locals 13

    const/4 v0, 0x0

    .line 50
    aget v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v1

    aget v4, p1, v0

    sub-float v5, v2, v4

    mul-float/2addr v3, v5

    sub-float v3, v2, v3

    const/4 v5, 0x1

    .line 51
    aget v6, p0, v5

    mul-float v7, v6, v1

    sub-float v8, v2, v4

    mul-float/2addr v7, v8

    aget v8, p1, v5

    mul-float v9, v8, v4

    sub-float v10, v2, v1

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    mul-float/2addr v6, v1

    mul-float/2addr v6, v8

    mul-float/2addr v6, v4

    add-float/2addr v7, v6

    const/4 v6, 0x2

    .line 55
    aget v8, p0, v6

    mul-float v9, v8, v1

    sub-float v10, v2, v4

    mul-float/2addr v9, v10

    aget v10, p1, v6

    mul-float v11, v10, v4

    sub-float v12, v2, v1

    mul-float/2addr v11, v12

    add-float/2addr v9, v11

    mul-float/2addr v8, v1

    mul-float/2addr v8, v10

    mul-float/2addr v8, v4

    add-float/2addr v9, v8

    const/4 v8, 0x3

    .line 59
    aget p0, p0, v8

    mul-float v10, p0, v1

    sub-float v11, v2, v4

    mul-float/2addr v10, v11

    aget p1, p1, v8

    mul-float v11, p1, v4

    sub-float/2addr v2, v1

    mul-float/2addr v11, v2

    add-float/2addr v10, v11

    mul-float/2addr p0, v1

    mul-float/2addr p0, p1

    mul-float/2addr p0, v4

    add-float/2addr v10, p0

    const/4 p0, 0x4

    new-array p0, p0, [F

    aput v3, p0, v0

    aput v7, p0, v5

    aput v9, p0, v6

    aput v10, p0, v8

    return-object p0
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/horcrux/svg/FeBlendView;->mIn1:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/horcrux/svg/FeBlendView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/horcrux/svg/FeBlendView;->mIn2:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/horcrux/svg/FeBlendView;->getSource(Ljava/util/HashMap;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/horcrux/svg/FeBlendView;->mMode:Lcom/horcrux/svg/FilterProperties$FeBlendMode;

    sget-object v1, Lcom/horcrux/svg/FilterProperties$FeBlendMode;->MULTIPLY:Lcom/horcrux/svg/FilterProperties$FeBlendMode;

    if-ne p2, v1, :cond_0

    .line 47
    new-instance p2, Lcom/horcrux/svg/FeBlendView$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/horcrux/svg/FeBlendView$$ExternalSyntheticLambda0;-><init>()V

    .line 65
    invoke-static {v0, p1, p2}, Lcom/horcrux/svg/CustomFilter;->apply(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/horcrux/svg/CustomFilterFunction;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 69
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, 0x0

    .line 71
    invoke-virtual {v1, v0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    sget-object v0, Lcom/horcrux/svg/FeBlendView$1;->$SwitchMap$com$horcrux$svg$FilterProperties$FeBlendMode:[I

    iget-object v5, p0, Lcom/horcrux/svg/FeBlendView;->mMode:Lcom/horcrux/svg/FilterProperties$FeBlendMode;

    invoke-virtual {v5}, Lcom/horcrux/svg/FilterProperties$FeBlendMode;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 79
    :cond_3
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 76
    :cond_4
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    :goto_0
    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p2
.end method

.method public setIn1(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/horcrux/svg/FeBlendView;->mIn1:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/horcrux/svg/FeBlendView;->invalidate()V

    return-void
.end method

.method public setIn2(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/horcrux/svg/FeBlendView;->mIn2:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/horcrux/svg/FeBlendView;->invalidate()V

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/horcrux/svg/FilterProperties$FeBlendMode;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/FilterProperties$FeBlendMode;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FeBlendView;->mMode:Lcom/horcrux/svg/FilterProperties$FeBlendMode;

    .line 38
    invoke-virtual {p0}, Lcom/horcrux/svg/FeBlendView;->invalidate()V

    return-void
.end method
