.class public final synthetic Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Canvas;

.field public final synthetic f$1:Landroid/view/SurfaceView;

.field public final synthetic f$2:Landroid/graphics/Paint;

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroid/graphics/Bitmap;

.field public final synthetic f$5:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;FLandroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Canvas;

    iput-object p2, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceView;

    iput-object p3, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Paint;

    iput p4, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$3:F

    iput-object p5, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$5:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Paint;

    iget v3, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$3:F

    iget-object v4, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/shopify/reactnative/skia/ViewScreenshotService$$ExternalSyntheticLambda0;->f$5:Ljava/util/concurrent/CountDownLatch;

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->lambda$drawSurfaceView$0(Landroid/graphics/Canvas;Landroid/view/SurfaceView;Landroid/graphics/Paint;FLandroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method
