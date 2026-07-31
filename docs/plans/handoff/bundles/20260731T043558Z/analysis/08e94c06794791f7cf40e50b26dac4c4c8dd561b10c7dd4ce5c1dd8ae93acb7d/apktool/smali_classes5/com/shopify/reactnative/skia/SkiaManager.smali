.class public Lcom/shopify/reactnative/skia/SkiaManager;
.super Ljava/lang/Object;
.source "SkiaManager.java"


# instance fields
.field private mContext:Lcom/facebook/react/bridge/ReactContext;

.field private mHybridData:Lcom/facebook/jni/HybridData;

.field private mPlatformContext:Lcom/shopify/reactnative/skia/PlatformContext;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 25
    invoke-static {p1}, Lcom/shopify/reactnative/skia/ReactNativeCompatible;->getRuntimeExecutor(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/bridge/RuntimeExecutor;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/shopify/reactnative/skia/PlatformContext;

    invoke-direct {v1, p1}, Lcom/shopify/reactnative/skia/PlatformContext;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v1, p0, Lcom/shopify/reactnative/skia/SkiaManager;->mPlatformContext:Lcom/shopify/reactnative/skia/PlatformContext;

    .line 29
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v1

    iget-object p1, p0, Lcom/shopify/reactnative/skia/SkiaManager;->mPlatformContext:Lcom/shopify/reactnative/skia/PlatformContext;

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/shopify/reactnative/skia/SkiaManager;->initHybrid(JLcom/facebook/react/bridge/RuntimeExecutor;Lcom/shopify/reactnative/skia/PlatformContext;)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lcom/shopify/reactnative/skia/SkiaManager;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 31
    invoke-direct {p0}, Lcom/shopify/reactnative/skia/SkiaManager;->initializeRuntime()V

    return-void
.end method

.method private native initHybrid(JLcom/facebook/react/bridge/RuntimeExecutor;Lcom/shopify/reactnative/skia/PlatformContext;)Lcom/facebook/jni/HybridData;
.end method

.method private native initializeRuntime()V
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaManager;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public getPixelDensity()F
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getPlatformContext()Lcom/shopify/reactnative/skia/PlatformContext;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaManager;->mPlatformContext:Lcom/shopify/reactnative/skia/PlatformContext;

    return-object v0
.end method

.method public native invalidate()V
.end method
