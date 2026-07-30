.class public Lcom/shopify/reactnative/skia/ViewScreenshotService;
.super Ljava/lang/Object;
.source "ViewScreenshotService.java"


# static fields
.field private static final SURFACE_VIEW_READ_PIXELS_TIMEOUT:J = 0x5L

.field private static final TAG:Ljava/lang/String; = "SkiaScreenshot"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 5

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 186
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v3, p1

    int-to-float p1, v3

    .line 188
    invoke-virtual {v1, v2, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 191
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 192
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static createPaint()Landroid/graphics/Paint;
    .locals 2

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-object v0
.end method

.method private static drawBackgroundIfPresent(Landroid/graphics/Canvas;Landroid/view/View;F)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    .line 100
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 101
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private static drawChildren(Landroid/graphics/Canvas;Landroid/view/ViewGroup;Landroid/graphics/Paint;F)V
    .locals 5

    .line 108
    instance-of v0, p1, Lcom/facebook/react/views/view/ReactViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 110
    :try_start_0
    new-array v2, v0, [Ljava/lang/Class;

    .line 111
    const-class v3, Landroid/graphics/Canvas;

    aput-object v3, v2, v1

    .line 112
    const-class v3, Lcom/facebook/react/views/view/ReactViewGroup;

    const-string v4, "dispatchOverflowDraw"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 114
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    const-string v2, "SkiaScreenshot"

    const-string v3, "couldn\'t invoke dispatchOverflowDraw() on ReactViewGroup"

    invoke-static {v2, v3, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 120
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    instance-of v2, v0, Landroid/view/TextureView;

    if-eqz v2, :cond_2

    .line 124
    check-cast v0, Landroid/view/TextureView;

    invoke-static {p0, v0, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawTextureView(Landroid/graphics/Canvas;Landroid/view/TextureView;Landroid/graphics/Paint;F)V

    goto :goto_1

    .line 125
    :cond_2
    instance-of v2, v0, Landroid/view/SurfaceView;

    if-eqz v2, :cond_3

    .line 126
    check-cast v0, Landroid/view/SurfaceView;

    invoke-static {p0, v0, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawSurfaceView(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;F)V

    goto :goto_1

    .line 128
    :cond_3
    invoke-static {p0, v0, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->renderViewToCanvas(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static drawSurfaceView(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;F)V
    .locals 10

    .line 150
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 152
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 154
    :try_start_0
    new-instance v9, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;FLandroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v0, Landroid/os/Handler;

    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 154
    invoke-static {p1, v8, v9, v0}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 162
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v7, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot PixelCopy for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkiaScreenshot"

    invoke-static {v2, v1, v0}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    invoke-static {p0, p1, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawSurfaceViewFromCache(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;F)V

    :goto_0
    return-void
.end method

.method private static drawSurfaceViewFromCache(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;F)V
    .locals 1

    .line 173
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 176
    invoke-static {p0, p1}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;)V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p3, p1

    .line 177
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x0

    .line 178
    invoke-virtual {p0, v0, p1, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 179
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private static drawTextureView(Landroid/graphics/Canvas;Landroid/view/TextureView;Landroid/graphics/Paint;F)V
    .locals 3

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 141
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 143
    invoke-static {p0, p1}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;)V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p3, p1

    .line 144
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, v0, p1, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static drawView(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;F)V
    .locals 0

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p3, p2

    .line 134
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 135
    invoke-virtual {p1, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static synthetic lambda$drawSurfaceView$0(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;FLandroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 156
    invoke-static {p0, p1}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;)V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p3, p1

    .line 157
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x0

    .line 158
    invoke-virtual {p0, p4, p1, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 160
    invoke-virtual {p5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static makeViewScreenshotFromTag(Lcom/facebook/react/bridge/ReactContext;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 33
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/Exception;)V

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    return-object v1

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez p1, :cond_2

    if-gtz v0, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 51
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    invoke-static {}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->createPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 56
    invoke-static {v0, p0, v1, v2}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->renderViewToCanvas(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;F)V

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-object p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private static renderViewToCanvas(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;F)V
    .locals 4

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float/2addr p3, v0

    .line 72
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 73
    invoke-static {p0, p1}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 76
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView;

    .line 78
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v1

    .line 79
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 80
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 81
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    .line 83
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 86
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    invoke-static {p0, p1, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawBackgroundIfPresent(Landroid/graphics/Canvas;Landroid/view/View;F)V

    .line 89
    invoke-static {p0, v0, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawChildren(Landroid/graphics/Canvas;Landroid/view/ViewGroup;Landroid/graphics/Paint;F)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->drawView(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Paint;F)V

    .line 94
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
