.class public final Leightbitlab/com/blurview/PreDrawBlurController;
.super Ljava/lang/Object;
.source "PreDrawBlurController.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurController;


# static fields
.field public static final TRANSPARENT:I


# instance fields
.field private final blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

.field private blurEnabled:Z

.field private blurRadius:F

.field final blurView:Landroid/view/View;

.field private final blurViewLocation:[I

.field private final drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private frameClearDrawable:Landroid/graphics/drawable/Drawable;

.field private initialized:Z

.field private internalBitmap:Landroid/graphics/Bitmap;

.field private internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

.field private overlayColor:I

.field private final rootLocation:[I

.field private final rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;ILeightbitlab/com/blurview/BlurAlgorithm;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 31
    iput v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    const/4 v0, 0x2

    .line 41
    new-array v1, v0, [I

    iput-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    .line 42
    new-array v0, v0, [I

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    .line 44
    new-instance v0, Leightbitlab/com/blurview/PreDrawBlurController$1;

    invoke-direct {v0, p0}, Leightbitlab/com/blurview/PreDrawBlurController$1;-><init>(Leightbitlab/com/blurview/PreDrawBlurController;)V

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    .line 69
    iput-object p2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    .line 70
    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    .line 71
    iput p3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    .line 72
    iput-object p4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    .line 73
    instance-of p2, p4, Leightbitlab/com/blurview/RenderEffectBlur;

    if-eqz p2, :cond_0

    .line 75
    check-cast p4, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p4, p2}, Leightbitlab/com/blurview/RenderEffectBlur;->setContext(Landroid/content/Context;)V

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 81
    invoke-virtual {p0, p2, p1}, Leightbitlab/com/blurview/PreDrawBlurController;->init(II)V

    return-void
.end method

.method private blurAndSave()V
    .locals 3

    .line 173
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-interface {v0, v1, v2}, Leightbitlab/com/blurview/BlurAlgorithm;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 174
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v0}, Leightbitlab/com/blurview/BlurAlgorithm;->canModifyBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurViewCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private setupInternalCanvasMatrix()V
    .locals 5

    .line 130
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 131
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 133
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    .line 134
    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 137
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 138
    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 143
    iget-object v4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v4, v2, v0}, Leightbitlab/com/blurview/BlurViewCanvas;->translate(FF)V

    .line 144
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v3

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Leightbitlab/com/blurview/BlurViewCanvas;->scale(FF)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 190
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v1}, Leightbitlab/com/blurview/BlurAlgorithm;->destroy()V

    .line 191
    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4

    .line 149
    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    instance-of v0, p1, Leightbitlab/com/blurview/BlurViewCanvas;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 159
    :cond_1
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 160
    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 163
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 164
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v2}, Leightbitlab/com/blurview/BlurAlgorithm;->render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 166
    iget v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method init(II)V
    .locals 4

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 87
    new-instance v1, Leightbitlab/com/blurview/SizeScaler;

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v2}, Leightbitlab/com/blurview/BlurAlgorithm;->scaleFactor()F

    move-result v2

    invoke-direct {v1, v2}, Leightbitlab/com/blurview/SizeScaler;-><init>(F)V

    .line 88
    invoke-virtual {v1, p1, p2}, Leightbitlab/com/blurview/SizeScaler;->isZeroSized(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 95
    invoke-virtual {v1, p1, p2}, Leightbitlab/com/blurview/SizeScaler;->scale(II)Leightbitlab/com/blurview/SizeScaler$Size;

    move-result-object p1

    .line 96
    iget p2, p1, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    iget p1, p1, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v1}, Leightbitlab/com/blurview/BlurAlgorithm;->getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 97
    new-instance p1, Leightbitlab/com/blurview/BlurViewCanvas;

    iget-object p2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Leightbitlab/com/blurview/BlurViewCanvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    .line 98
    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    .line 103
    invoke-virtual {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->updateBlur()V

    return-void
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 2

    .line 215
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 216
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 220
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 221
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-object p0
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 208
    iput-boolean p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    .line 209
    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 210
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-object p0
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 196
    iput p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    return-object p0
.end method

.method public setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 202
    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    .line 229
    iget v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    if-eq v0, p1, :cond_0

    .line 230
    iput p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    .line 231
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method updateBlur()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    :goto_0
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurViewCanvas;->save()I

    .line 119
    invoke-direct {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->setupInternalCanvasMatrix()V

    .line 120
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 121
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurViewCanvas;->restore()V

    .line 123
    invoke-direct {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->blurAndSave()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateBlurViewSize()V
    .locals 2

    .line 181
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 182
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 184
    invoke-virtual {p0, v0, v1}, Leightbitlab/com/blurview/PreDrawBlurController;->init(II)V

    return-void
.end method
