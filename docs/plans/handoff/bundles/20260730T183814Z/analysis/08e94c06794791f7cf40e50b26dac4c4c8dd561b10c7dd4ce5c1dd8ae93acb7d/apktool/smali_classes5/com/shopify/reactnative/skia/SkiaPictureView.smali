.class public Lcom/shopify/reactnative/skia/SkiaPictureView;
.super Lcom/shopify/reactnative/skia/SkiaBaseView;
.source "SkiaPictureView.java"


# instance fields
.field private mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/shopify/reactnative/skia/SkiaBaseView;-><init>(Landroid/content/Context;)V

    .line 15
    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    const-class v0, Lcom/shopify/reactnative/skia/RNSkiaModule;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/shopify/reactnative/skia/RNSkiaModule;

    .line 16
    invoke-virtual {p1}, Lcom/shopify/reactnative/skia/RNSkiaModule;->getSkiaManager()Lcom/shopify/reactnative/skia/SkiaManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shopify/reactnative/skia/SkiaPictureView;->initHybrid(Lcom/shopify/reactnative/skia/SkiaManager;)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaPictureView;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private native initHybrid(Lcom/shopify/reactnative/skia/SkiaManager;)Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 22
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaPictureView;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method protected native registerView(I)V
.end method

.method protected native setBgColor(I)V
.end method

.method protected native setDebugMode(Z)V
.end method

.method protected native surfaceAvailable(Ljava/lang/Object;IIZ)V
.end method

.method protected native surfaceDestroyed()V
.end method

.method protected native surfaceSizeChanged(Ljava/lang/Object;IIZ)V
.end method

.method protected native unregisterView()V
.end method
