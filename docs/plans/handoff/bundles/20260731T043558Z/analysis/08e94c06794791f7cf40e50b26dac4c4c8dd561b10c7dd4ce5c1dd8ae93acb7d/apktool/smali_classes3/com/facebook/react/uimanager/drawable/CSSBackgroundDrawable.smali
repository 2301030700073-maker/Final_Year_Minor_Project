.class public Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CSSBackgroundDrawable.java"


# annotations
.annotation runtime Lcom/facebook/react/common/annotations/UnstableReactNativeAPI;
.end annotation


# static fields
.field private static final ALL_BITS_SET:I = -0x1

.field private static final ALL_BITS_UNSET:I = 0x0

.field private static final DEFAULT_BORDER_ALPHA:I = 0xff

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_RGB:I


# instance fields
.field private mAlpha:I

.field private mBackgroundColorRenderPath:Landroid/graphics/Path;

.field private mBackgroundImageLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/style/BackgroundImageLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

.field private mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

.field private mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

.field private mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

.field private mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

.field private mCenterDrawPath:Landroid/graphics/Path;

.field private mColor:I

.field private mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

.field private final mContext:Landroid/content/Context;

.field private final mGapBetweenPaths:F

.field private mInnerBottomLeftCorner:Landroid/graphics/PointF;

.field private mInnerBottomRightCorner:Landroid/graphics/PointF;

.field private mInnerClipPathForBorderRadius:Landroid/graphics/Path;

.field private mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

.field private mInnerTopLeftCorner:Landroid/graphics/PointF;

.field private mInnerTopRightCorner:Landroid/graphics/PointF;

.field private mLayoutDirectionOverride:I

.field private mNeedUpdatePathForBorderRadius:Z

.field private mOuterClipPathForBorderRadius:Landroid/graphics/Path;

.field private mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathForBorder:Landroid/graphics/Path;

.field private mPathForBorderRadiusOutline:Landroid/graphics/Path;

.field private final mPathForSingleBorder:Landroid/graphics/Path;

.field private mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

.field private mTempRectForCenterDrawPath:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 105
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 118
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 119
    iput v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    const/16 v0, 0xff

    .line 121
    iput v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    const v0, 0x3f4ccccd    # 0.8f

    .line 127
    iput v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mGapBetweenPaths:F

    .line 129
    new-instance v0, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    .line 130
    new-instance v0, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mLayoutDirectionOverride:I

    .line 137
    iput-object p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static colorFromAlphaAndRGBComponents(FF)I
    .locals 1

    const v0, 0xffffff

    float-to-int p1, p1

    and-int/2addr p1, v0

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 1360
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1364
    iget-object p2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1365
    iget-object p2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1366
    iget-object p2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1367
    iget-object p2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2, p7, p8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1368
    iget-object p2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2, p9, p10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1369
    iget-object p2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1370
    iget-object p2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorder:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRectangularBackgroundWithBorders(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1131
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1133
    iget v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    iget v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->multiplyColorAlpha(II)I

    move-result v0

    .line 1134
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1139
    :cond_0
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1140
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBackgroundImageShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1141
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1142
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1145
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v0

    .line 1147
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1148
    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1149
    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 1150
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v16

    if-gtz v13, :cond_2

    if-gtz v15, :cond_2

    if-gtz v14, :cond_2

    if-lez v16, :cond_1a

    .line 1154
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v10, 0x0

    .line 1156
    invoke-virtual {v11, v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v2

    const/4 v9, 0x1

    .line 1157
    invoke-virtual {v11, v9}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    const/4 v8, 0x2

    .line 1158
    invoke-virtual {v11, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v4

    const/4 v5, 0x3

    .line 1159
    invoke-virtual {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v5

    const/16 v6, 0x9

    .line 1161
    invoke-virtual {v11, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v7

    const/16 v8, 0xb

    .line 1162
    invoke-virtual {v11, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v18

    const/16 v10, 0xa

    .line 1163
    invoke-virtual {v11, v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v20

    .line 1165
    invoke-direct {v11, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v7

    move v5, v3

    .line 1169
    :cond_3
    invoke-direct {v11, v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v20, v5

    .line 1172
    :goto_0
    invoke-direct {v11, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v18, v3

    .line 1176
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getLayoutDirection()I

    move-result v3

    if-ne v3, v9, :cond_6

    move v3, v9

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    const/4 v5, 0x4

    .line 1177
    invoke-virtual {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v6

    const/4 v7, 0x5

    .line 1178
    invoke-virtual {v11, v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v8

    .line 1180
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v10

    iget-object v9, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1181
    invoke-direct {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    move v2, v6

    .line 1185
    :goto_3
    invoke-direct {v11, v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    move v4, v8

    :goto_4
    if-eqz v3, :cond_9

    move v5, v4

    goto :goto_5

    :cond_9
    move v5, v2

    :goto_5
    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v2, v4

    :goto_6
    move/from16 v22, v2

    move v10, v5

    goto :goto_b

    :cond_b
    if-eqz v3, :cond_c

    move v9, v8

    goto :goto_7

    :cond_c
    move v9, v6

    :goto_7
    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    move v6, v8

    .line 1198
    :goto_8
    invoke-direct {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v5

    .line 1199
    invoke-direct {v11, v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v7

    if-eqz v3, :cond_e

    move v8, v7

    goto :goto_9

    :cond_e
    move v8, v5

    :goto_9
    if-eqz v3, :cond_f

    goto :goto_a

    :cond_f
    move v5, v7

    :goto_a
    if-eqz v8, :cond_10

    move v2, v9

    :cond_10
    move v10, v2

    if-eqz v5, :cond_11

    move/from16 v22, v6

    goto :goto_b

    :cond_11
    move/from16 v22, v4

    .line 1214
    :goto_b
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 1215
    iget v8, v1, Landroid/graphics/Rect;->top:I

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move v6, v10

    move/from16 v7, v18

    move/from16 v23, v10

    const/16 v17, 0x2

    move v10, v8

    move/from16 v8, v22

    move/from16 v24, v15

    move v15, v9

    move/from16 v9, v20

    .line 1219
    invoke-static/range {v2 .. v9}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->fastBorderCompatibleColorOrZero(IIIIIIII)I

    move-result v2

    if-eqz v2, :cond_15

    .line 1230
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_1a

    .line 1232
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 1233
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 1235
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1236
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-lez v13, :cond_12

    .line 1238
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1239
    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1240
    invoke-direct {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePathEffect(I)V

    .line 1241
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1242
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    div-int/lit8 v2, v2, 0x2

    add-int v9, v15, v2

    int-to-float v2, v9

    int-to-float v5, v10

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1243
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    int-to-float v5, v1

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1244
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_12
    if-lez v14, :cond_13

    .line 1247
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1248
    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1249
    invoke-direct {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePathEffect(I)V

    .line 1250
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1251
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    int-to-float v5, v15

    div-int/lit8 v2, v2, 0x2

    add-int v8, v10, v2

    int-to-float v2, v8

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1252
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    int-to-float v5, v3

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1253
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_13
    if-lez v24, :cond_14

    .line 1256
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1257
    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1258
    invoke-direct {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePathEffect(I)V

    .line 1259
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1260
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v5, v10

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1261
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    int-to-float v5, v1

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1262
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_14
    if-lez v16, :cond_1a

    .line 1265
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1266
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1267
    invoke-direct {v11, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePathEffect(I)V

    .line 1268
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v4, v0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1269
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    int-to-float v4, v15

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1270
    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    int-to-float v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1271
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForSingleBorder:Landroid/graphics/Path;

    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_d

    .line 1281
    :cond_15
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1283
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 1284
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v19

    if-lez v13, :cond_16

    int-to-float v9, v15

    int-to-float v4, v10

    add-int v0, v15, v13

    int-to-float v7, v0

    add-int v8, v10, v14

    int-to-float v6, v8

    add-int v8, v10, v19

    sub-int v0, v8, v16

    int-to-float v5, v0

    int-to-float v8, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move v3, v9

    move/from16 v21, v5

    move v5, v7

    move/from16 v23, v8

    move/from16 v8, v21

    move v12, v10

    move/from16 v10, v23

    .line 1296
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto :goto_c

    :cond_16
    move v12, v10

    :goto_c
    if-lez v14, :cond_17

    int-to-float v3, v15

    int-to-float v10, v12

    add-int v9, v15, v13

    int-to-float v5, v9

    add-int v8, v12, v14

    int-to-float v8, v8

    add-int v9, v15, v17

    sub-int v0, v9, v24

    int-to-float v7, v0

    int-to-float v9, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v4, v10

    move v6, v8

    .line 1309
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    :cond_17
    if-lez v24, :cond_18

    add-int v9, v15, v17

    int-to-float v5, v9

    int-to-float v4, v12

    add-int v8, v12, v19

    int-to-float v6, v8

    sub-int v9, v9, v24

    int-to-float v9, v9

    sub-int v8, v8, v16

    int-to-float v8, v8

    add-int v0, v12, v14

    int-to-float v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move v3, v5

    move v7, v9

    .line 1322
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    :cond_18
    if-lez v16, :cond_19

    int-to-float v3, v15

    add-int v8, v12, v19

    int-to-float v6, v8

    add-int v9, v15, v17

    int-to-float v5, v9

    sub-int v9, v9, v24

    int-to-float v7, v9

    sub-int v8, v8, v16

    int-to-float v10, v8

    add-int v9, v15, v13

    int-to-float v9, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move v4, v6

    move v8, v10

    .line 1335
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 1339
    :cond_19
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_1a
    :goto_d
    return-void
.end method

.method private drawRoundedBackgroundWithBorders(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePath()V

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 394
    iget v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    mul-int/2addr v1, v2

    const/16 v2, 0x8

    shr-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 395
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 398
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 401
    :cond_0
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBackgroundImageShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 403
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 404
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 405
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 408
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v13

    const/4 v0, 0x0

    .line 409
    invoke-virtual {v11, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v1

    const/4 v3, 0x1

    .line 410
    invoke-virtual {v11, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v4

    const/4 v5, 0x2

    .line 411
    invoke-virtual {v11, v5}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v5

    const/4 v6, 0x3

    .line 412
    invoke-virtual {v11, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v6

    const/16 v7, 0x9

    .line 414
    invoke-virtual {v11, v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v8

    const/16 v9, 0xb

    .line 415
    invoke-virtual {v11, v9}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v10

    const/16 v14, 0xa

    .line 416
    invoke-virtual {v11, v14}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v15

    .line 418
    invoke-direct {v11, v7}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v8

    move v6, v4

    .line 422
    :cond_2
    invoke-direct {v11, v14}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    move v15, v6

    .line 425
    :goto_0
    invoke-direct {v11, v9}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v14, v10

    goto :goto_1

    :cond_4
    move v14, v4

    .line 429
    :goto_1
    iget v4, v13, Landroid/graphics/RectF;->top:F

    const/16 v16, 0x0

    cmpl-float v4, v4, v16

    if-gtz v4, :cond_5

    iget v4, v13, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v16

    if-gtz v4, :cond_5

    iget v4, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v16

    if-gtz v4, :cond_5

    iget v4, v13, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v16

    if-lez v4, :cond_16

    .line 435
    :cond_5
    iget-object v4, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    .line 436
    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 435
    invoke-virtual {v12, v4, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getFullBorderWidth()F

    move-result v4

    .line 440
    invoke-virtual {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v2

    .line 441
    iget v6, v13, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_6

    iget v6, v13, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_6

    iget v6, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_6

    iget v6, v13, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-nez v6, :cond_6

    if-ne v1, v2, :cond_6

    if-ne v14, v2, :cond_6

    if-ne v5, v2, :cond_6

    if-ne v15, v2, :cond_6

    cmpl-float v0, v4, v16

    if-lez v0, :cond_16

    .line 450
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    invoke-static {v2, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->multiplyColorAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 452
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 453
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v1, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_c

    .line 458
    :cond_6
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 461
    iget-object v2, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    .line 462
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 461
    invoke-virtual {v12, v2, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getLayoutDirection()I

    move-result v2

    if-ne v2, v3, :cond_7

    move v0, v3

    :cond_7
    const/4 v2, 0x4

    .line 465
    invoke-virtual {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    const/4 v4, 0x5

    .line 466
    invoke-virtual {v11, v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v6

    .line 468
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v7

    iget-object v8, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 469
    invoke-direct {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    move v1, v3

    .line 473
    :goto_2
    invoke-direct {v11, v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    move v5, v6

    :goto_3
    if-eqz v0, :cond_a

    move v2, v5

    goto :goto_4

    :cond_a
    move v2, v1

    :goto_4
    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move v1, v5

    :goto_5
    move/from16 v17, v1

    goto :goto_a

    :cond_c
    if-eqz v0, :cond_d

    move v7, v6

    goto :goto_6

    :cond_d
    move v7, v3

    :goto_6
    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    move v3, v6

    .line 486
    :goto_7
    invoke-direct {v11, v2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v2

    .line 487
    invoke-direct {v11, v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v4

    if-eqz v0, :cond_f

    move v6, v4

    goto :goto_8

    :cond_f
    move v6, v2

    :goto_8
    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    move v2, v4

    :goto_9
    if-eqz v6, :cond_11

    move v1, v7

    :cond_11
    if-eqz v2, :cond_12

    move v2, v1

    move/from16 v17, v3

    goto :goto_a

    :cond_12
    move v2, v1

    move/from16 v17, v5

    .line 502
    :goto_a
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 503
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 504
    iget v10, v0, Landroid/graphics/RectF;->left:F

    .line 505
    iget v9, v0, Landroid/graphics/RectF;->right:F

    .line 506
    iget v8, v0, Landroid/graphics/RectF;->top:F

    .line 507
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    .line 509
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/graphics/PointF;

    .line 510
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/PointF;

    .line 511
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/PointF;

    .line 512
    iget-object v0, v11, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/PointF;

    .line 516
    iget v0, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v16

    const v18, 0x3f4ccccd    # 0.8f

    if-lez v0, :cond_13

    sub-float v19, v8, v18

    .line 519
    iget v1, v6, Landroid/graphics/PointF;->x:F

    .line 520
    iget v0, v6, Landroid/graphics/PointF;->y:F

    sub-float v20, v0, v18

    .line 521
    iget v0, v4, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    .line 522
    iget v0, v4, Landroid/graphics/PointF;->y:F

    add-float v22, v0, v18

    add-float v23, v7, v18

    move-object/from16 v0, p0

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object v11, v3

    move v3, v10

    move-object v12, v4

    move/from16 v4, v19

    move/from16 v19, v15

    move-object v15, v5

    move/from16 v5, v24

    move-object/from16 v24, v12

    move-object v12, v6

    move/from16 v6, v20

    move/from16 v20, v7

    move/from16 v7, v21

    move/from16 v21, v8

    move/from16 v8, v22

    move/from16 v22, v9

    move v9, v10

    move/from16 v25, v10

    move/from16 v10, v23

    .line 526
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    goto :goto_b

    :cond_13
    move-object v11, v3

    move-object/from16 v24, v4

    move-object v12, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v25, v10

    move/from16 v19, v15

    move-object v15, v5

    .line 529
    :goto_b
    iget v0, v13, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_14

    sub-float v3, v25, v18

    .line 532
    iget v0, v12, Landroid/graphics/PointF;->x:F

    sub-float v5, v0, v18

    .line 533
    iget v6, v12, Landroid/graphics/PointF;->y:F

    .line 534
    iget v0, v15, Landroid/graphics/PointF;->x:F

    add-float v7, v0, v18

    .line 535
    iget v8, v15, Landroid/graphics/PointF;->y:F

    add-float v9, v22, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v4, v21

    move/from16 v10, v21

    .line 539
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 542
    :cond_14
    iget v0, v13, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_15

    sub-float v4, v21, v18

    .line 545
    iget v5, v15, Landroid/graphics/PointF;->x:F

    .line 546
    iget v0, v15, Landroid/graphics/PointF;->y:F

    sub-float v6, v0, v18

    .line 547
    iget v7, v11, Landroid/graphics/PointF;->x:F

    .line 548
    iget v0, v11, Landroid/graphics/PointF;->y:F

    add-float v8, v0, v18

    add-float v10, v20, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v22

    move/from16 v9, v22

    .line 552
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 555
    :cond_15
    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_16

    sub-float v3, v25, v18

    move-object/from16 v0, v24

    .line 558
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v18

    .line 559
    iget v6, v0, Landroid/graphics/PointF;->y:F

    .line 560
    iget v0, v11, Landroid/graphics/PointF;->x:F

    add-float v7, v0, v18

    .line 561
    iget v8, v11, Landroid/graphics/PointF;->y:F

    add-float v9, v22, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v4, v20

    move/from16 v10, v20

    .line 565
    invoke-direct/range {v0 .. v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawQuadrilateral(Landroid/graphics/Canvas;IFFFFFFFF)V

    .line 570
    :cond_16
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static fastBorderCompatibleColorOrZero(IIIIIIII)I
    .locals 3

    const/4 v0, -0x1

    if-lez p0, :cond_0

    move v1, p4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez p1, :cond_1

    move v2, p5

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    and-int/2addr v1, v2

    if-lez p2, :cond_2

    move v2, p6

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    and-int/2addr v1, v2

    if-lez p3, :cond_3

    move v0, p7

    :cond_3
    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez p0, :cond_4

    goto :goto_3

    :cond_4
    move p4, v1

    :goto_3
    if-lez p1, :cond_5

    goto :goto_4

    :cond_5
    move p5, v1

    :goto_4
    or-int p0, p4, p5

    if-lez p2, :cond_6

    goto :goto_5

    :cond_6
    move p6, v1

    :goto_5
    or-int/2addr p0, p6

    if-lez p3, :cond_7

    goto :goto_6

    :cond_7
    move p7, v1

    :goto_6
    or-int/2addr p0, p7

    if-ne v0, p0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    return v0
.end method

.method private getBackgroundImageShader()Landroid/graphics/Shader;
    .locals 5

    .line 1437
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1442
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/style/BackgroundImageLayer;

    .line 1443
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/react/uimanager/style/BackgroundImageLayer;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_0

    .line 1450
    :cond_2
    new-instance v3, Landroid/graphics/ComposeShader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v1, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    move-object v1, v3

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V
    .locals 21

    move-object/from16 v0, p16

    add-double v1, p0, p4

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    add-double v5, p2, p6

    div-double/2addr v5, v3

    sub-double v7, p8, v1

    sub-double v9, p10, v5

    sub-double v11, p12, v1

    sub-double v13, p14, v5

    sub-double v15, p4, p0

    .line 1012
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    div-double/2addr v15, v3

    sub-double v17, p6, p2

    .line 1013
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    div-double v17, v17, v3

    sub-double/2addr v13, v9

    sub-double/2addr v11, v7

    div-double/2addr v13, v11

    mul-double/2addr v7, v13

    sub-double/2addr v9, v7

    mul-double v17, v17, v17

    mul-double v7, v15, v15

    mul-double v11, v7, v13

    mul-double/2addr v11, v13

    add-double v11, v17, v11

    mul-double v19, v15, v3

    mul-double v19, v19, v15

    mul-double v19, v19, v9

    mul-double v3, v19, v13

    mul-double v19, v9, v9

    sub-double v19, v19, v17

    mul-double v7, v7, v19

    neg-double v7, v7

    div-double/2addr v7, v11

    move-wide/from16 v17, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v5

    move-wide v15, v1

    div-double v0, v3, v11

    .line 1034
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    neg-double v2, v3

    div-double/2addr v2, v11

    sub-double/2addr v2, v0

    mul-double/2addr v13, v2

    add-double/2addr v13, v9

    add-double/2addr v2, v15

    add-double v13, v13, v17

    .line 1046
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    double-to-float v0, v2

    move-object/from16 v1, p16

    .line 1047
    iput v0, v1, Landroid/graphics/PointF;->x:F

    double-to-float v0, v13

    .line 1048
    iput v0, v1, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method private static getPathEffect(Lcom/facebook/react/uimanager/style/BorderStyle;F)Landroid/graphics/PathEffect;
    .locals 7

    .line 77
    sget-object v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable$1;->$SwitchMap$com$facebook$react$uimanager$style$BorderStyle:[I

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/style/BorderStyle;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_0
    new-instance p0, Landroid/graphics/DashPathEffect;

    new-array v3, v3, [F

    aput p1, v3, v2

    aput p1, v3, v1

    aput p1, v3, v5

    aput p1, v3, v4

    invoke-direct {p0, v3, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    return-object p0

    .line 82
    :cond_1
    new-instance p0, Landroid/graphics/DashPathEffect;

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr p1, v6

    new-array v3, v3, [F

    aput p1, v3, v2

    aput p1, v3, v1

    aput p1, v3, v5

    aput p1, v3, v4

    invoke-direct {p0, v3, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    return-object p0
.end method

.method private isBorderColorDefined(I)Z
    .locals 3

    .line 1381
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1382
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v1

    .line 1383
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private static multiplyColorAlpha(II)I
    .locals 2

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    const v0, 0xffffff

    if-nez p1, :cond_1

    and-int/2addr p0, v0

    return p0

    :cond_1
    shr-int/lit8 v1, p1, 0x7

    add-int/2addr p1, v1

    ushr-int/lit8 v1, p0, 0x18

    mul-int/2addr v1, p1

    shr-int/lit8 p1, v1, 0x8

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private setBorderAlpha(IF)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 263
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method private setBorderRGB(IF)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/Spacing;-><init>(F)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    .line 252
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method private updatePath()V
    .locals 52

    move-object/from16 v0, p0

    .line 574
    iget-boolean v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 578
    iput-boolean v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 580
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    if-nez v2, :cond_1

    .line 581
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    .line 584
    :cond_1
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    if-nez v2, :cond_2

    .line 585
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    .line 588
    :cond_2
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    if-nez v2, :cond_3

    .line 589
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    .line 592
    :cond_3
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    if-nez v2, :cond_4

    .line 593
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    .line 596
    :cond_4
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    if-nez v2, :cond_5

    .line 597
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    .line 600
    :cond_5
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    if-nez v2, :cond_6

    .line 601
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 604
    :cond_6
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    if-nez v2, :cond_7

    .line 605
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 608
    :cond_7
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    if-nez v2, :cond_8

    .line 609
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    .line 612
    :cond_8
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    if-nez v2, :cond_9

    .line 613
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    .line 616
    :cond_9
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 617
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 618
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 619
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 620
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 622
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 623
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 624
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 625
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v2

    .line 629
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v3

    const/4 v4, 0x1

    .line 630
    invoke-virtual {v0, v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v5

    const/4 v6, 0x2

    .line 631
    invoke-virtual {v0, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v7

    const/4 v8, 0x3

    .line 632
    invoke-virtual {v0, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v9

    const/16 v10, 0x8

    .line 633
    invoke-virtual {v0, v10}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v11

    const/16 v12, 0x9

    .line 635
    invoke-virtual {v0, v12}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v13

    const/16 v14, 0xb

    .line 636
    invoke-virtual {v0, v14}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v15

    const/16 v8, 0xa

    .line 637
    invoke-virtual {v0, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderColor(I)I

    move-result v17

    .line 639
    invoke-direct {v0, v12}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v12

    if-eqz v12, :cond_a

    move v5, v13

    move v9, v5

    .line 643
    :cond_a
    invoke-direct {v0, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v17, v9

    .line 646
    :goto_0
    invoke-direct {v0, v14}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->isBorderColorDefined(I)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_1

    :cond_c
    move v15, v5

    .line 651
    :goto_1
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-nez v3, :cond_d

    .line 652
    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-nez v3, :cond_d

    .line 653
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-nez v3, :cond_d

    .line 654
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-nez v3, :cond_d

    .line 655
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_e

    .line 657
    :cond_d
    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v7

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 658
    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v7

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 659
    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 660
    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v7

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 663
    :cond_e
    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 664
    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 665
    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 666
    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 668
    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getLayoutDirection()I

    move-result v5

    iget-object v7, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 672
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v9}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v9

    iget-object v11, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 673
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-static {v11}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v11

    .line 669
    invoke-virtual {v3, v5, v7, v9, v11}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->resolve(ILandroid/content/Context;FF)Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    .line 674
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getTopLeft()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v3

    .line 675
    iget-object v5, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    invoke-virtual {v5}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getTopRight()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v5

    .line 676
    iget-object v7, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    invoke-virtual {v7}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getBottomLeft()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v7

    .line 677
    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mComputedBorderRadius:Lcom/facebook/react/uimanager/style/ComputedBorderRadius;

    invoke-virtual {v9}, Lcom/facebook/react/uimanager/style/ComputedBorderRadius;->getBottomRight()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/react/uimanager/style/CornerRadii;->toPixelFromDIP()Lcom/facebook/react/uimanager/style/CornerRadii;

    move-result-object v9

    .line 680
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v11

    iget v12, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v11, v12}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v11

    .line 682
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v12

    iget v13, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v12, v13}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v12

    .line 684
    invoke-virtual {v5}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v13

    iget v14, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v13, v14}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v13

    .line 686
    invoke-virtual {v5}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v14

    iget v15, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v14, v15}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v14

    .line 688
    invoke-virtual {v9}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v15

    iget v8, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v15, v8}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v8

    .line 690
    invoke-virtual {v9}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v15

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v15, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v6

    .line 692
    invoke-virtual {v7}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v15

    iget v4, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v15, v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v4

    .line 694
    invoke-virtual {v7}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v15

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v15, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getInnerBorderRadius(FF)F

    move-result v1

    .line 696
    iget-object v15, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    move-object/from16 v21, v7

    iget-object v7, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    move-object/from16 v22, v9

    new-array v9, v10, [F

    const/16 v20, 0x0

    aput v11, v9, v20

    const/16 v19, 0x1

    aput v12, v9, v19

    const/16 v18, 0x2

    aput v13, v9, v18

    const/16 v16, 0x3

    aput v14, v9, v16

    const/16 v23, 0x4

    aput v8, v9, v23

    const/16 v24, 0x5

    aput v6, v9, v24

    const/16 v25, 0x6

    aput v4, v9, v25

    const/16 v26, 0x7

    aput v1, v9, v26

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v15, v7, v9, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 716
    iget-object v7, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundColorRenderPath:Landroid/graphics/Path;

    .line 717
    iget v9, v2, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    const v15, 0x3f4ccccd    # 0.8f

    if-lez v9, :cond_f

    .line 718
    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v15

    goto :goto_2

    .line 719
    :cond_f
    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    :goto_2
    move/from16 v28, v9

    .line 720
    iget v9, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_10

    .line 721
    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v15

    goto :goto_3

    .line 722
    :cond_10
    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    :goto_3
    move/from16 v29, v9

    .line 723
    iget v9, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_11

    .line 724
    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v15

    goto :goto_4

    .line 725
    :cond_11
    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    :goto_4
    move/from16 v30, v9

    .line 726
    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_12

    .line 727
    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v15

    goto :goto_5

    .line 728
    :cond_12
    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    :goto_5
    move/from16 v31, v9

    const/16 v9, 0x8

    new-array v15, v9, [F

    const/4 v9, 0x0

    aput v11, v15, v9

    const/4 v9, 0x1

    aput v12, v15, v9

    const/4 v9, 0x2

    aput v13, v15, v9

    const/4 v9, 0x3

    aput v14, v15, v9

    aput v8, v15, v23

    aput v6, v15, v24

    aput v4, v15, v25

    aput v1, v15, v26

    sget-object v33, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v27, v7

    move-object/from16 v32, v15

    .line 716
    invoke-virtual/range {v27 .. v33}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 741
    iget-object v7, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 744
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v15

    .line 745
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v27

    .line 746
    invoke-virtual {v5}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v28

    .line 747
    invoke-virtual {v5}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v29

    .line 748
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v30

    .line 749
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v31

    .line 750
    invoke-virtual/range {v21 .. v21}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v32

    .line 751
    invoke-virtual/range {v21 .. v21}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v33

    move/from16 v34, v6

    const/16 v10, 0x8

    new-array v6, v10, [F

    const/4 v10, 0x0

    aput v15, v6, v10

    const/4 v10, 0x1

    aput v27, v6, v10

    const/4 v10, 0x2

    aput v28, v6, v10

    const/4 v10, 0x3

    aput v29, v6, v10

    aput v30, v6, v23

    aput v31, v6, v24

    aput v32, v6, v25

    aput v33, v6, v26

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 741
    invoke-virtual {v7, v9, v6, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 757
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_13

    const/16 v9, 0x8

    .line 758
    invoke-virtual {v6, v9}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v6

    div-float v10, v6, v7

    goto :goto_6

    :cond_13
    const/4 v10, 0x0

    .line 761
    :goto_6
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForBorderRadiusOutline:Landroid/graphics/RectF;

    .line 764
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v15

    add-float/2addr v15, v10

    .line 765
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v27

    add-float v27, v27, v10

    .line 766
    invoke-virtual {v5}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v28

    add-float v28, v28, v10

    .line 767
    invoke-virtual {v5}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v29

    add-float v29, v29, v10

    .line 768
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v30

    add-float v30, v30, v10

    .line 769
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v31

    add-float v31, v31, v10

    .line 770
    invoke-virtual/range {v21 .. v21}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v32

    add-float v32, v32, v10

    .line 771
    invoke-virtual/range {v21 .. v21}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v33

    add-float v33, v33, v10

    const/16 v10, 0x8

    new-array v7, v10, [F

    const/4 v10, 0x0

    aput v15, v7, v10

    const/4 v10, 0x1

    aput v27, v7, v10

    const/4 v10, 0x2

    aput v28, v7, v10

    const/4 v10, 0x3

    aput v29, v7, v10

    aput v30, v7, v23

    aput v31, v7, v24

    aput v32, v7, v25

    aput v33, v7, v26

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 761
    invoke-virtual {v6, v9, v7, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 775
    iget-object v6, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mCenterDrawPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mTempRectForCenterDrawPath:Landroid/graphics/RectF;

    .line 778
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v9

    iget v10, v2, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v10, v15

    sub-float/2addr v9, v10

    .line 779
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v3

    iget v10, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v10, v15

    sub-float/2addr v3, v10

    .line 780
    invoke-virtual {v5}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v10

    move/from16 v17, v8

    iget v8, v2, Landroid/graphics/RectF;->right:F

    mul-float/2addr v8, v15

    sub-float/2addr v10, v8

    .line 781
    invoke-virtual {v5}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v5

    iget v8, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v8, v15

    sub-float/2addr v5, v8

    .line 782
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v8

    move/from16 v27, v14

    iget v14, v2, Landroid/graphics/RectF;->right:F

    mul-float/2addr v14, v15

    sub-float/2addr v8, v14

    .line 783
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v14

    move/from16 v22, v13

    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v13, v15

    sub-float/2addr v14, v13

    .line 784
    invoke-virtual/range {v21 .. v21}, Lcom/facebook/react/uimanager/style/CornerRadii;->getHorizontal()F

    move-result v13

    move/from16 v28, v4

    iget v4, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v15

    sub-float/2addr v13, v4

    .line 785
    invoke-virtual/range {v21 .. v21}, Lcom/facebook/react/uimanager/style/CornerRadii;->getVertical()F

    move-result v4

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, v15

    sub-float/2addr v4, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v15, 0x0

    aput v9, v2, v15

    const/4 v9, 0x1

    aput v3, v2, v9

    const/4 v3, 0x2

    aput v10, v2, v3

    const/4 v3, 0x3

    aput v5, v2, v3

    aput v8, v2, v23

    aput v14, v2, v24

    aput v13, v2, v25

    aput v4, v2, v26

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 775
    invoke-virtual {v6, v7, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 876
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    if-nez v2, :cond_14

    .line 877
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    .line 881
    :cond_14
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 882
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 884
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    move-wide/from16 v35, v2

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    move-wide/from16 v37, v2

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v11, v3

    add-float/2addr v2, v11

    float-to-double v4, v2

    move-wide/from16 v39, v4

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v12, v3

    add-float/2addr v2, v12

    float-to-double v2, v2

    move-wide/from16 v41, v2

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    move-wide/from16 v43, v2

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    move-wide/from16 v45, v2

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    move-wide/from16 v47, v2

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    move-wide/from16 v49, v2

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v51, v2

    invoke-static/range {v35 .. v51}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 903
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    if-nez v2, :cond_15

    .line 904
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    .line 907
    :cond_15
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 908
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 910
    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    move-wide/from16 v35, v2

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    float-to-double v1, v2

    move-wide/from16 v37, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float v4, v28, v3

    add-float/2addr v1, v4

    float-to-double v1, v1

    move-wide/from16 v39, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v41, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v43, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v45, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    move-wide/from16 v47, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v49, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomLeftCorner:Landroid/graphics/PointF;

    move-object/from16 v51, v1

    invoke-static/range {v35 .. v51}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 929
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    if-nez v1, :cond_16

    .line 930
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    .line 933
    :cond_16
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 934
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 936
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v13, v22, v2

    sub-float/2addr v1, v13

    float-to-double v1, v1

    move-wide/from16 v35, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v37, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v39, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v14, v27, v2

    add-float/2addr v1, v14

    float-to-double v1, v1

    move-wide/from16 v41, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v43, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v45, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide/from16 v47, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    move-wide/from16 v49, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerTopRightCorner:Landroid/graphics/PointF;

    move-object/from16 v51, v1

    invoke-static/range {v35 .. v51}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    .line 955
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    if-nez v1, :cond_17

    .line 956
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    .line 959
    :cond_17
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 960
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 962
    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v8, v17, v2

    sub-float/2addr v1, v8

    float-to-double v3, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    mul-float v6, v34, v2

    sub-float/2addr v1, v6

    float-to-double v5, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v7, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v9, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v11, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v13, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    move-wide v15, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipTempRectForBorderRadius:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    move-wide/from16 v17, v1

    iget-object v1, v0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerBottomRightCorner:Landroid/graphics/PointF;

    move-object/from16 v19, v1

    invoke-static/range {v3 .. v19}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getEllipseIntersectionWithLine(DDDDDDDDLandroid/graphics/PointF;)V

    return-void
.end method

.method private updatePathEffect()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getFullBorderWidth()F

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getPathEffect(Lcom/facebook/react/uimanager/style/BorderStyle;F)Landroid/graphics/PathEffect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1081
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method private updatePathEffect(I)V
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 1087
    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getPathEffect(Lcom/facebook/react/uimanager/style/BorderStyle;F)Landroid/graphics/PathEffect;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1089
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePathEffect()V

    .line 143
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawRectangularBackgroundWithBorders(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->drawRoundedBackgroundWithBorders(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    return v0
.end method

.method public getBorderBoxPath()Landroid/graphics/Path;
    .locals 2

    .line 355
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePath()V

    .line 357
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mOuterClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBorderBoxRect()Landroid/graphics/RectF;
    .locals 2

    .line 364
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getBorderColor(I)I
    .locals 2

    .line 1387
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRGB:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1388
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderAlpha:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/Spacing;->get(I)F

    move-result p1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x437f0000    # 255.0f

    .line 1390
    :goto_1
    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->colorFromAlphaAndRGBComponents(FF)I

    move-result p1

    return p1
.end method

.method public getBorderRadius()Lcom/facebook/react/uimanager/style/BorderRadiusStyle;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    return-object v0
.end method

.method public getBorderStyle()Lcom/facebook/react/uimanager/style/BorderStyle;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    return-object v0
.end method

.method public getBorderWidth(I)Ljava/lang/Float;
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1066
    :cond_0
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result p1

    .line 1068
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1072
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getBorderWidthOrDefaultTo(FI)F
    .locals 0

    .line 1053
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidth(I)Ljava/lang/Float;

    move-result-object p2

    if-nez p2, :cond_0

    return p1

    .line 1058
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getColor()I
    .locals 1
    .annotation runtime Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation

    .line 351
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    return v0
.end method

.method public getDirectionAwareBorderInsets()Landroid/graphics/RectF;
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 1394
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v0

    const/4 v1, 0x1

    .line 1395
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v2

    const/4 v3, 0x3

    .line 1396
    invoke-virtual {p0, v0, v3}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v3

    const/4 v4, 0x0

    .line 1397
    invoke-virtual {p0, v0, v4}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v5

    const/4 v6, 0x2

    .line 1398
    invoke-virtual {p0, v0, v6}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBorderWidthOrDefaultTo(FI)F

    move-result v0

    .line 1400
    iget-object v6, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v6, :cond_9

    .line 1401
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getLayoutDirection()I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1402
    :goto_0
    iget-object v4, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v4

    .line 1403
    iget-object v6, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v6

    .line 1405
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1406
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1410
    :goto_1
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    if-eqz v1, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    if-eqz v1, :cond_4

    move v0, v5

    :cond_4
    move v5, v4

    goto :goto_6

    :cond_5
    if-eqz v1, :cond_6

    move v7, v6

    goto :goto_4

    :cond_6
    move v7, v4

    :goto_4
    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v4, v6

    .line 1423
    :goto_5
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    move v5, v7

    .line 1427
    :cond_8
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_9

    move v0, v4

    .line 1433
    :cond_9
    :goto_6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getFullBorderWidth()F
    .locals 2

    .line 1094
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInnerBorderRadius(FF)F
    .locals 0

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    .line 336
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getLayoutDirection()I
    .locals 2

    .line 188
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mLayoutDirectionOverride:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 193
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, -0x2

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePath()V

    .line 210
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mPathForBorderRadiusOutline:Landroid/graphics/Path;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getPaddingBoxPath()Landroid/graphics/Path;
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->hasRoundedBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->updatePath()V

    .line 370
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mInnerClipPathForBorderRadius:Landroid/graphics/Path;

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPaddingBoxRect()Landroid/graphics/RectF;
    .locals 6

    .line 377
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getDirectionAwareBorderInsets()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    .line 382
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 385
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    .line 386
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public hasRoundedBorders()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->hasRoundedBorders()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 162
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 163
    iput p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mAlpha:I

    .line 164
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBackgroundImage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/style/BackgroundImageLayer;",
            ">;)V"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBackgroundImageLayers:Ljava/util/List;

    .line 346
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBorderColor(ILjava/lang/Integer;)V
    .locals 3

    const/high16 v0, 0x7fc00000    # Float.NaN

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    int-to-float v1, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    ushr-int/lit8 p2, p2, 0x18

    int-to-float v0, p2

    .line 240
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderRGB(IF)V

    .line 241
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderAlpha(IF)V

    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->get(Lcom/facebook/react/uimanager/style/BorderRadiusProp;)Lcom/facebook/react/uimanager/LengthPercentage;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->set(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    const/4 p1, 0x1

    .line 320
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 321
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusStyle;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    return-void
.end method

.method public setBorderStyle(Lcom/facebook/react/uimanager/style/BorderStyle;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    if-eq v0, p1, :cond_0

    .line 275
    iput-object p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderStyle:Lcom/facebook/react/uimanager/style/BorderStyle;

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 277
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 269
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/uimanager/style/BorderStyle;->valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/style/BorderStyle;

    move-result-object p1

    .line 270
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderStyle(Lcom/facebook/react/uimanager/style/BorderStyle;)V

    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/facebook/react/uimanager/Spacing;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/Spacing;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/Spacing;->getRaw(I)F

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderWidth:Lcom/facebook/react/uimanager/Spacing;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/Spacing;->set(IF)Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    iput-boolean p2, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mNeedUpdatePathForBorderRadius:Z

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 340
    iput p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mColor:I

    .line 341
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setLayoutDirectionOverride(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget v0, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mLayoutDirectionOverride:I

    if-eq v0, p1, :cond_0

    .line 181
    iput p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mLayoutDirectionOverride:I

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.75.0"
    .end annotation

    .line 290
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 292
    sget-object p1, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    invoke-virtual {p0, p1, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    goto :goto_1

    .line 294
    :cond_1
    sget-object v0, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->BORDER_RADIUS:Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    new-instance v1, Lcom/facebook/react/uimanager/LengthPercentage;

    .line 296
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v2, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v1, p1, v2}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    .line 294
    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    :goto_1
    return-void
.end method

.method public setRadius(FI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "0.75.0"
    .end annotation

    .line 305
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->mBorderRadius:Lcom/facebook/react/uimanager/style/BorderRadiusStyle;

    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2, v1}, Lcom/facebook/react/uimanager/style/BorderRadiusStyle;->set(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    .line 309
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->invalidateSelf()V

    goto :goto_1

    .line 312
    :cond_1
    invoke-static {}, Lcom/facebook/react/uimanager/style/BorderRadiusProp;->values()[Lcom/facebook/react/uimanager/style/BorderRadiusProp;

    move-result-object v0

    aget-object p2, v0, p2

    new-instance v0, Lcom/facebook/react/uimanager/LengthPercentage;

    .line 313
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v1, Lcom/facebook/react/uimanager/LengthPercentageType;->POINT:Lcom/facebook/react/uimanager/LengthPercentageType;

    invoke-direct {v0, p1, v1}, Lcom/facebook/react/uimanager/LengthPercentage;-><init>(FLcom/facebook/react/uimanager/LengthPercentageType;)V

    .line 311
    invoke-virtual {p0, p2, v0}, Lcom/facebook/react/uimanager/drawable/CSSBackgroundDrawable;->setBorderRadius(Lcom/facebook/react/uimanager/style/BorderRadiusProp;Lcom/facebook/react/uimanager/LengthPercentage;)V

    :goto_1
    return-void
.end method
