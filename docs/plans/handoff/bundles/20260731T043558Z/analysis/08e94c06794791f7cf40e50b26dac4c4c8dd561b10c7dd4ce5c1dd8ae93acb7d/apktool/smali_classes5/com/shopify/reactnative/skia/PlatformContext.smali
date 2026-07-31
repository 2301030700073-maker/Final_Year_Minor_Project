.class public Lcom/shopify/reactnative/skia/PlatformContext;
.super Ljava/lang/Object;
.source "PlatformContext.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Lcom/facebook/react/bridge/ReactContext;

.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/shopify/reactnative/skia/PlatformContext;)Lcom/facebook/react/bridge/ReactContext;
    .locals 0

    iget-object p0, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mContext:Lcom/facebook/react/bridge/ReactContext;

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "PlatformContext"

    iput-object v0, p0, Lcom/shopify/reactnative/skia/PlatformContext;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mainHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 32
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p1}, Lcom/shopify/reactnative/skia/PlatformContext;->initHybrid(F)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private getStreamAsBytes(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    .line 43
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 45
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private native initHybrid(F)Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public createVideo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 37
    new-instance v0, Lcom/shopify/reactnative/skia/RNSkVideo;

    iget-object v1, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, v1, p1}, Lcom/shopify/reactnative/skia/RNSkVideo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getJniStreamFromSource(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    .line 67
    iget-object p1, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shopify/reactnative/skia/PlatformContext;->getStreamAsBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1

    .line 74
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    .line 85
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 87
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 88
    invoke-direct {p0, v0}, Lcom/shopify/reactnative/skia/PlatformContext;->getStreamAsBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1

    .line 79
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid URI scheme"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public raise(Ljava/lang/String;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/shopify/reactnative/skia/PlatformContext$1;

    invoke-direct {v1, p0, p1}, Lcom/shopify/reactnative/skia/PlatformContext$1;-><init>(Lcom/shopify/reactnative/skia/PlatformContext;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method takeScreenshotFromViewTag(I)Ljava/lang/Object;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/shopify/reactnative/skia/PlatformContext;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, p1}, Lcom/shopify/reactnative/skia/ViewScreenshotService;->makeViewScreenshotFromTag(Lcom/facebook/react/bridge/ReactContext;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
