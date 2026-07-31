.class public abstract Lcom/horcrux/svg/RenderableView;
.super Lcom/horcrux/svg/VirtualView;
.source "RenderableView.java"

# interfaces
.implements Lcom/facebook/react/touch/ReactHitSlopView;


# static fields
.field private static final CAP_BUTT:I = 0x0

.field static final CAP_ROUND:I = 0x1

.field private static final CAP_SQUARE:I = 0x2

.field private static final FILL_RULE_EVENODD:I = 0x0

.field static final FILL_RULE_NONZERO:I = 0x1

.field private static final JOIN_BEVEL:I = 0x2

.field private static final JOIN_MITER:I = 0x0

.field static final JOIN_ROUND:I = 0x1

.field private static final VECTOR_EFFECT_DEFAULT:I = 0x0

.field private static final VECTOR_EFFECT_NON_SCALING_STROKE:I = 0x1

.field static contextElement:Lcom/horcrux/svg/RenderableView;

.field private static final regex:Ljava/util/regex/Pattern;


# instance fields
.field public fill:Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public fillOpacity:F

.field public fillRule:Landroid/graphics/Path$FillType;

.field private mAttributeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCaller:Lcom/horcrux/svg/RenderableView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentColor:I

.field mFilter:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLastMergedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOriginProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPropList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public stroke:Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public strokeDasharray:[Lcom/horcrux/svg/SVGLength;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public strokeDashoffset:F

.field public strokeLinecap:Landroid/graphics/Paint$Cap;

.field public strokeLinejoin:Landroid/graphics/Paint$Join;

.field public strokeMiterlimit:F

.field public strokeOpacity:F

.field public strokeWidth:Lcom/horcrux/svg/SVGLength;

.field public vectorEffect:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-string v0, "[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/horcrux/svg/RenderableView;->regex:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3

    .line 45
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->vectorEffect:I

    .line 79
    new-instance v0, Lcom/horcrux/svg/SVGLength;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 80
    iput v0, p0, Lcom/horcrux/svg/RenderableView;->strokeOpacity:F

    const/high16 v1, 0x40800000    # 4.0f

    .line 81
    iput v1, p0, Lcom/horcrux/svg/RenderableView;->strokeMiterlimit:F

    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/horcrux/svg/RenderableView;->strokeDashoffset:F

    .line 84
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v2, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    .line 85
    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v2, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    .line 87
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->mCurrentColor:I

    .line 89
    iput v0, p0, Lcom/horcrux/svg/RenderableView;->fillOpacity:F

    .line 90
    sget-object p1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fillRule:Landroid/graphics/Path$FillType;

    .line 46
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/RenderableView;->setPivotX(F)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/RenderableView;->setPivotY(F)V

    return-void
.end method

.method private getAttributeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private hasOwnProperty(Ljava/lang/String;)Z
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V
    .locals 10

    const/4 v0, 0x0

    .line 621
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v0

    const v1, 0xffffff

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 668
    :cond_0
    sget-object p3, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    if-eqz p3, :cond_8

    iget-object p3, p3, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz p3, :cond_8

    .line 669
    invoke-direct {p0, p1, p2, p3}, Lcom/horcrux/svg/RenderableView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_2

    .line 661
    :cond_1
    sget-object p3, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    if-eqz p3, :cond_8

    iget-object p3, p3, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz p3, :cond_8

    .line 662
    invoke-direct {p0, p1, p2, p3}, Lcom/horcrux/svg/RenderableView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_2

    .line 653
    :cond_2
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getCurrentColor()I

    move-result p3

    ushr-int/lit8 v0, p3, 0x18

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 655
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    and-int/2addr p3, v1

    or-int/2addr p2, p3

    .line 656
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 645
    :cond_3
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-interface {p3, v5}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/horcrux/svg/SvgView;->getDefinedBrush(Ljava/lang/String;)Lcom/horcrux/svg/Brush;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 647
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mBox:Landroid/graphics/RectF;

    iget v1, p0, Lcom/horcrux/svg/RenderableView;->mScale:F

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/horcrux/svg/Brush;->setupPaint(Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V

    goto :goto_2

    .line 624
    :cond_4
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 626
    invoke-interface {p3, v5}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v2, :cond_5

    .line 627
    invoke-interface {p3, v5}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    .line 629
    :cond_5
    invoke-interface {p3, v5}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p3

    :goto_0
    ushr-int/lit8 v0, p3, 0x18

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 632
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    and-int/2addr p3, v1

    or-int/2addr p2, p3

    .line 633
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 637
    :cond_6
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const-wide v6, 0x406fe00000000000L    # 255.0

    if-le v0, v3, :cond_7

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v0

    float-to-double v8, p2

    mul-double/2addr v0, v8

    mul-double/2addr v0, v6

    goto :goto_1

    :cond_7
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    float-to-double v0, p2

    :goto_1
    double-to-int p2, v0

    .line 638
    invoke-interface {p3, v5}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 639
    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v1, v3

    .line 640
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int p3, v2

    .line 636
    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 5

    .line 493
    iget v0, p0, Lcom/horcrux/svg/RenderableView;->mOpacity:F

    mul-float/2addr p3, v0

    .line 495
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v3

    iput-object v3, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    .line 498
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->fillRule:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 500
    :cond_1
    iget v3, p0, Lcom/horcrux/svg/RenderableView;->vectorEffect:I

    if-ne v3, v2, :cond_2

    move v1, v2

    .line 501
    :cond_2
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_3

    .line 503
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 505
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    const/4 v1, 0x0

    .line 506
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    if-nez v0, :cond_4

    .line 510
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    if-eq v3, v1, :cond_5

    .line 511
    :cond_4
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mBox:Landroid/graphics/RectF;

    .line 512
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mBox:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 515
    :cond_5
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mBox:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 516
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 517
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/RenderableView;->setClientRect(Landroid/graphics/RectF;)V

    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/RenderableView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 521
    iget v1, p0, Lcom/horcrux/svg/RenderableView;->fillOpacity:F

    mul-float/2addr v1, p3

    invoke-virtual {p0, p2, v1}, Lcom/horcrux/svg/RenderableView;->setupFillPaint(Landroid/graphics/Paint;F)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    .line 523
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mFillPath:Landroid/graphics/Path;

    .line 524
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mFillPath:Landroid/graphics/Path;

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Paint;->getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    .line 526
    :cond_6
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 528
    :cond_7
    iget v1, p0, Lcom/horcrux/svg/RenderableView;->strokeOpacity:F

    mul-float/2addr v1, p3

    invoke-virtual {p0, p2, v1}, Lcom/horcrux/svg/RenderableView;->setupStrokePaint(Landroid/graphics/Paint;F)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    .line 530
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokePath:Landroid/graphics/Path;

    .line 531
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokePath:Landroid/graphics/Path;

    invoke-virtual {p2, v3, v0}, Landroid/graphics/Paint;->getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z

    .line 533
    :cond_8
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 535
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/RenderableView;->renderMarkers(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    return-void
.end method

.method getCurrentColor()I
    .locals 2

    .line 135
    iget v0, p0, Lcom/horcrux/svg/RenderableView;->mCurrentColor:I

    if-eqz v0, :cond_0

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mCaller:Lcom/horcrux/svg/RenderableView;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/horcrux/svg/RenderableView;->getCurrentColor()I

    move-result v0

    return v0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 142
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-eqz v1, :cond_2

    .line 143
    check-cast v0, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v0}, Lcom/horcrux/svg/RenderableView;->getCurrentColor()I

    move-result v0

    return v0

    .line 144
    :cond_2
    instance-of v1, v0, Lcom/horcrux/svg/SvgView;

    if-eqz v1, :cond_3

    .line 145
    check-cast v0, Lcom/horcrux/svg/SvgView;

    iget v0, v0, Lcom/horcrux/svg/SvgView;->mCurrentColor:I

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getHitSlopRect()Landroid/graphics/Rect;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v1, Lcom/facebook/react/uimanager/PointerEvents;->BOX_NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v1, :cond_0

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
.end method

.method getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;
    .locals 7

    .line 746
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 747
    new-instance v1, Landroid/graphics/Region;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    .line 750
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    .line 751
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p2, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    .line 752
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, p2

    .line 753
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p2, v5

    invoke-direct {v1, v2, v3, v4, p2}, Landroid/graphics/Region;-><init>(IIII)V

    .line 747
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    return-object v0
.end method

.method hitTest([F)I
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/horcrux/svg/RenderableView;->mInvertible:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    sget-object v2, Lcom/facebook/react/uimanager/PointerEvents;->NONE:Lcom/facebook/react/uimanager/PointerEvents;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x2

    .line 688
    new-array v0, v0, [F

    .line 689
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 690
    iget-object p1, p0, Lcom/horcrux/svg/RenderableView;->mInvTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 p1, 0x0

    .line 691
    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x1

    .line 692
    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 694
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->initBounds()V

    .line 696
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mStrokeRegion:Landroid/graphics/Region;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mStrokeRegion:Landroid/graphics/Region;

    .line 698
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mMarkerRegion:Landroid/graphics/Region;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mMarkerRegion:Landroid/graphics/Region;

    .line 699
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 703
    :cond_3
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getClipPath()Landroid/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 705
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mClipRegion:Landroid/graphics/Region;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 710
    :cond_4
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getId()I

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method initBounds()V
    .locals 3

    .line 714
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mFillPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 715
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    .line 716
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mFillPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 717
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mFillPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 720
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    .line 721
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 722
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mFillBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mRegion:Landroid/graphics/Region;

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokeRegion:Landroid/graphics/Region;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokePath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 725
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokeBounds:Landroid/graphics/RectF;

    .line 726
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mStrokeBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 727
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mStrokeBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mStrokeRegion:Landroid/graphics/Region;

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerRegion:Landroid/graphics/Region;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    .line 730
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerBounds:Landroid/graphics/RectF;

    .line 731
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mMarkerBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 732
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mMarkerBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v2}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMarkerRegion:Landroid/graphics/Region;

    .line 734
    :cond_3
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getClipPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 736
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mClipRegionPath:Landroid/graphics/Path;

    if-eq v2, v0, :cond_4

    .line 737
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mClipRegionPath:Landroid/graphics/Path;

    .line 738
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/horcrux/svg/RenderableView;->mClipBounds:Landroid/graphics/RectF;

    .line 739
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mClipBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 740
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mClipBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/horcrux/svg/RenderableView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mClipRegion:Landroid/graphics/Region;

    :cond_4
    return-void
.end method

.method mergeProperties(Lcom/horcrux/svg/RenderableView;)V
    .locals 8

    .line 763
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->mCaller:Lcom/horcrux/svg/RenderableView;

    .line 764
    invoke-direct {p1}, Lcom/horcrux/svg/RenderableView;->getAttributeList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 766
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 770
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    .line 771
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    .line 773
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 775
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 776
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 777
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 778
    iget-object v6, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-direct {p0, v3}, Lcom/horcrux/svg/RenderableView;->hasOwnProperty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 781
    iget-object v6, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 785
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 789
    :cond_3
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    :cond_4
    :goto_2
    return-void
.end method

.method render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 11

    .line 366
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mMask:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 368
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mMask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/horcrux/svg/SvgView;->getDefinedMask(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/MaskView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 370
    :goto_0
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mFilter:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v2

    .line 372
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->mFilter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/horcrux/svg/SvgView;->getDefinedFilter(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v2

    check-cast v2, Lcom/horcrux/svg/FilterView;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    .line 487
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    goto/16 :goto_6

    :cond_3
    :goto_2
    if-eqz v2, :cond_5

    .line 377
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 378
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 380
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/horcrux/svg/SvgView;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 385
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 388
    invoke-virtual {p0, v6, p2, p3}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 391
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->initBounds()V

    .line 392
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getClientRect()Landroid/graphics/RectF;

    move-result-object p3

    .line 393
    instance-of v6, p0, Lcom/horcrux/svg/ImageView;

    if-eqz v6, :cond_4

    if-nez p3, :cond_4

    return-void

    .line 397
    :cond_4
    invoke-virtual {v2, v5, v4, p3}, Lcom/horcrux/svg/FilterView;->applyFilter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 401
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    const/4 v4, 0x0

    .line 402
    invoke-virtual {p1, p3, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 403
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    .line 405
    :cond_5
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 406
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    :goto_3
    if-eqz v0, :cond_9

    .line 416
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 417
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 420
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 422
    invoke-virtual {v0}, Lcom/horcrux/svg/MaskView;->getMaskType()Lcom/horcrux/svg/MaskView$MaskType;

    move-result-object v2

    sget-object v3, Lcom/horcrux/svg/MaskView$MaskType;->LUMINANCE:Lcom/horcrux/svg/MaskView$MaskType;

    if-ne v2, v3, :cond_6

    .line 426
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 427
    new-instance v3, Landroid/graphics/ColorMatrix;

    const/16 v4, 0x14

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 432
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 433
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    goto :goto_4

    .line 435
    :cond_6
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 440
    :goto_4
    invoke-virtual {v0}, Lcom/horcrux/svg/MaskView;->getMaskUnits()Lcom/horcrux/svg/Brush$BrushUnits;

    move-result-object v2

    sget-object v3, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    if-ne v2, v3, :cond_7

    .line 441
    iget-object v2, v0, Lcom/horcrux/svg/MaskView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v2}, Lcom/horcrux/svg/RenderableView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 442
    iget-object v3, v0, Lcom/horcrux/svg/MaskView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v3}, Lcom/horcrux/svg/RenderableView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v3

    double-to-float v3, v3

    .line 443
    iget-object v4, v0, Lcom/horcrux/svg/MaskView;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v4}, Lcom/horcrux/svg/RenderableView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    double-to-float v4, v4

    .line 444
    iget-object v5, v0, Lcom/horcrux/svg/MaskView;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v5}, Lcom/horcrux/svg/RenderableView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v5

    double-to-float v5, v5

    .line 445
    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v4, v2

    add-float/2addr v5, v3

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_5

    .line 447
    :cond_7
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getClientRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 448
    instance-of v3, p0, Lcom/horcrux/svg/ImageView;

    if-eqz v3, :cond_8

    if-nez v2, :cond_8

    return-void

    .line 451
    :cond_8
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->mInvCTM:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 452
    iget-object v3, v0, Lcom/horcrux/svg/MaskView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/horcrux/svg/RenderableView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v3

    double-to-float v3, v3

    .line 453
    iget-object v4, v0, Lcom/horcrux/svg/MaskView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/horcrux/svg/RenderableView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v4

    double-to-float v4, v4

    .line 454
    iget-object v5, v0, Lcom/horcrux/svg/MaskView;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/horcrux/svg/RenderableView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v5

    double-to-float v5, v5

    .line 455
    iget-object v6, v0, Lcom/horcrux/svg/MaskView;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/horcrux/svg/RenderableView;->relativeOnFraction(Lcom/horcrux/svg/SVGLength;F)D

    move-result-wide v6

    double-to-float v6, v6

    .line 456
    new-instance v7, Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v3

    iget v9, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v4

    iget v10, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v3

    add-float/2addr v10, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    add-float/2addr v2, v6

    invoke-direct {v7, v8, v9, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v6, v7

    .line 464
    :goto_5
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 466
    invoke-virtual {v0, p1, p2, v2}, Lcom/horcrux/svg/MaskView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 469
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 472
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 474
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 476
    invoke-virtual {v0, p1, p2, v2}, Lcom/horcrux/svg/MaskView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 482
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 485
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3e59999a    # 0.2125f
        0x3f372474    # 0.7154f
        0x3d93a92a    # 0.0721f
        0x0
        0x0
    .end array-data
.end method

.method renderMarkers(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 12

    .line 539
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mMarkerStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/horcrux/svg/SvgView;->getDefinedMarker(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/MarkerView;

    .line 540
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v1

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mMarkerMid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/horcrux/svg/SvgView;->getDefinedMarker(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v1

    check-cast v1, Lcom/horcrux/svg/MarkerView;

    .line 541
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v2

    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->mMarkerEnd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/horcrux/svg/SvgView;->getDefinedMarker(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v2

    check-cast v2, Lcom/horcrux/svg/MarkerView;

    .line 542
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->elements:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_7

    .line 543
    :cond_0
    sput-object p0, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    .line 544
    iget-object v3, p0, Lcom/horcrux/svg/RenderableView;->elements:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/horcrux/svg/RNSVGMarkerPosition;->fromPath(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 545
    iget-object v4, p0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/horcrux/svg/RenderableView;->relativeOnOther(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_0
    double-to-float v4, v4

    .line 546
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/horcrux/svg/RenderableView;->mMarkerPath:Landroid/graphics/Path;

    .line 547
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/horcrux/svg/RNSVGMarkerPosition;

    .line 548
    iget-object v5, v10, Lcom/horcrux/svg/RNSVGMarkerPosition;->type:Lcom/horcrux/svg/RNSVGMarkerType;

    .line 550
    sget-object v7, Lcom/horcrux/svg/RenderableView$1;->$SwitchMap$com$horcrux$svg$RNSVGMarkerType:[I

    invoke-virtual {v5}, Lcom/horcrux/svg/RNSVGMarkerType;->ordinal()I

    move-result v5

    aget v5, v7, v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    move-object v5, v2

    goto :goto_2

    :cond_3
    move-object v5, v1

    goto :goto_2

    :cond_4
    move-object v5, v0

    :goto_2
    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    move-object v6, v5

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move v11, v4

    .line 566
    invoke-virtual/range {v6 .. v11}, Lcom/horcrux/svg/MarkerView;->renderMarker(Landroid/graphics/Canvas;Landroid/graphics/Paint;FLcom/horcrux/svg/RNSVGMarkerPosition;F)V

    .line 567
    iget-object v6, v5, Lcom/horcrux/svg/MarkerView;->markerTransform:Landroid/graphics/Matrix;

    .line 568
    iget-object v7, p0, Lcom/horcrux/svg/RenderableView;->mMarkerPath:Landroid/graphics/Path;

    invoke-virtual {v5, p1, p2}, Lcom/horcrux/svg/MarkerView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 570
    :cond_6
    sput-object v6, Lcom/horcrux/svg/RenderableView;->contextElement:Lcom/horcrux/svg/RenderableView;

    :cond_7
    return-void
.end method

.method resetProperties()V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 795
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 796
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 797
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 803
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mLastMergedList:Ljava/util/ArrayList;

    .line 804
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mOriginProperties:Ljava/util/ArrayList;

    .line 805
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    .line 806
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mCaller:Lcom/horcrux/svg/RenderableView;

    goto :goto_1

    :catch_0
    move-exception v0

    .line 800
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public setCurrentColor(Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->mCurrentColor:I

    .line 130
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    .line 131
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->clearChildCache()V

    return-void
.end method

.method public setFill(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 7
    .param p1    # Lcom/facebook/react/bridge/Dynamic;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_6

    .line 151
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 157
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 158
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/RenderableView;->setFill(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 165
    :cond_1
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_1

    .line 167
    :cond_2
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_1

    .line 170
    :cond_3
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>()V

    .line 171
    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushInt(I)V

    .line 172
    sget-object v1, Lcom/horcrux/svg/RenderableView;->regex:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 174
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    add-int/lit8 v1, v2, 0x1

    const/4 v5, 0x3

    if-ge v2, v5, :cond_4

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    .line 176
    :cond_4
    invoke-virtual {v0, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushDouble(D)V

    move v2, v1

    goto :goto_0

    .line 178
    :cond_5
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 180
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void

    :cond_6
    :goto_2
    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 153
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setFill(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 186
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void

    .line 189
    :cond_0
    const-string v0, "type"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 191
    const-string v0, "payload"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    .line 192
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 193
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    .line 194
    :cond_1
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "brushRef"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    .line 200
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    .line 202
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setFillOpacity(F)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->fillOpacity:F

    .line 207
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setFillRule(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fillRule "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " unrecognized"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    sget-object p1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->fillRule:Landroid/graphics/Path$FillType;

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->mFilter:Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcom/horcrux/svg/VirtualView;->setId(I)V

    .line 120
    invoke-static {p1, p0}, Lcom/horcrux/svg/RenderableViewManager;->setRenderableView(ILcom/horcrux/svg/RenderableView;)V

    return-void
.end method

.method public setPropList(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p1    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mAttributeList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 349
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->mPropList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setStroke(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 7
    .param p1    # Lcom/facebook/react/bridge/Dynamic;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_6

    .line 225
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 231
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 232
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    .line 234
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/RenderableView;->setStroke(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 239
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 240
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 241
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_1

    .line 242
    :cond_2
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_1

    .line 245
    :cond_3
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>()V

    .line 246
    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushInt(I)V

    .line 247
    sget-object v1, Lcom/horcrux/svg/RenderableView;->regex:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 249
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    add-int/lit8 v1, v2, 0x1

    const/4 v5, 0x3

    if-ge v2, v5, :cond_4

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    .line 251
    :cond_4
    invoke-virtual {v0, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushDouble(D)V

    move v2, v1

    goto :goto_0

    .line 253
    :cond_5
    iput-object v0, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 255
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void

    :cond_6
    :goto_2
    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 227
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setStroke(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 260
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 261
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void

    .line 264
    :cond_0
    const-string v0, "type"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 266
    const-string v0, "payload"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    .line 267
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    .line 269
    :cond_1
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "brushRef"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    .line 275
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    .line 277
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setStrokeDasharray(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    .line 286
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->arrayFrom(Lcom/facebook/react/bridge/Dynamic;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 288
    new-array v0, v0, [Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/horcrux/svg/SVGLength;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setStrokeDashoffset(F)V
    .locals 1

    .line 296
    iget v0, p0, Lcom/horcrux/svg/RenderableView;->mScale:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/horcrux/svg/RenderableView;->strokeDashoffset:F

    .line 297
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setStrokeLinecap(I)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 316
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 322
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strokeLinecap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " unrecognized"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 313
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setStrokeLinejoin(I)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 334
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 340
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strokeLinejoin "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " unrecognized"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 331
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setStrokeMiterlimit(F)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->strokeMiterlimit:F

    .line 307
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setStrokeOpacity(F)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->strokeOpacity:F

    .line 282
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2

    .line 301
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/horcrux/svg/SVGLength;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p1, v0, v1}, Lcom/horcrux/svg/SVGLength;-><init>(D)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    .line 302
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method public setVectorEffect(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/horcrux/svg/RenderableView;->vectorEffect:I

    .line 125
    invoke-virtual {p0}, Lcom/horcrux/svg/RenderableView;->invalidate()V

    return-void
.end method

.method setupFillPaint(Landroid/graphics/Paint;F)Z
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 580
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    const/16 v0, 0x181

    .line 581
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 582
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 583
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->fill:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, p1, p2, v0}, Lcom/horcrux/svg/RenderableView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setupStrokePaint(Landroid/graphics/Paint;F)Z
    .locals 5

    .line 594
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 595
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->strokeWidth:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v0}, Lcom/horcrux/svg/RenderableView;->relativeOnOther(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 596
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x181

    .line 600
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 601
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 602
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->strokeLinecap:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 603
    iget-object v2, p0, Lcom/horcrux/svg/RenderableView;->strokeLinejoin:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 604
    iget v2, p0, Lcom/horcrux/svg/RenderableView;->strokeMiterlimit:F

    iget v4, p0, Lcom/horcrux/svg/RenderableView;->mScale:F

    mul-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    double-to-float v0, v0

    .line 605
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 606
    iget-object v0, p0, Lcom/horcrux/svg/RenderableView;->stroke:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0, p1, p2, v0}, Lcom/horcrux/svg/RenderableView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    .line 608
    iget-object p2, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    if-eqz p2, :cond_2

    .line 609
    array-length p2, p2

    .line 610
    new-array v0, p2, [F

    :goto_0
    if-ge v3, p2, :cond_1

    .line 612
    iget-object v1, p0, Lcom/horcrux/svg/RenderableView;->strokeDasharray:[Lcom/horcrux/svg/SVGLength;

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/horcrux/svg/RenderableView;->relativeOnOther(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    :cond_1
    new-instance p2, Landroid/graphics/DashPathEffect;

    iget v1, p0, Lcom/horcrux/svg/RenderableView;->strokeDashoffset:F

    invoke-direct {p2, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v3
.end method
