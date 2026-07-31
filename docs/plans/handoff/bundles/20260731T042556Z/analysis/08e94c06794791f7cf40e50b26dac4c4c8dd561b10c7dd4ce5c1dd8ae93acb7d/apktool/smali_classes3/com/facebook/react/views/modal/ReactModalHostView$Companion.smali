.class final Lcom/facebook/react/views/modal/ReactModalHostView$Companion;
.super Ljava/lang/Object;
.source "ReactModalHostView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/modal/ReactModalHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0003J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/react/views/modal/ReactModalHostView$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "statusBarHeight",
        "",
        "initStatusBarHeight",
        "",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "getScreenDisplayMetricsWithoutInsets",
        "",
        "encodeFloatsToLong",
        "width",
        "",
        "height",
        "ReactAndroid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getScreenDisplayMetricsWithoutInsets(Lcom/facebook/react/views/modal/ReactModalHostView$Companion;)J
    .locals 2

    .line 454
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView$Companion;->getScreenDisplayMetricsWithoutInsets()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$initStatusBarHeight(Lcom/facebook/react/views/modal/ReactModalHostView$Companion;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$Companion;->initStatusBarHeight(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method private final encodeFloatsToLong(FF)J
    .locals 2

    .line 475
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private final getScreenDisplayMetricsWithoutInsets()J
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 468
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 470
    sget-object v1, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->pxToDp(F)F

    move-result v1

    .line 471
    sget-object v2, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {}, Lcom/facebook/react/views/modal/ReactModalHostView;->access$getStatusBarHeight$cp()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/facebook/react/uimanager/PixelUtil;->pxToDp(F)F

    move-result v0

    .line 469
    invoke-direct {p0, v1, v0}, Lcom/facebook/react/views/modal/ReactModalHostView$Companion;->encodeFloatsToLong(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method private final initStatusBarHeight(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 462
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->INSTANCE:Lcom/facebook/react/uimanager/DisplayMetricsHolder;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getStatusBarHeightPx$ReactAndroid_release(Landroid/app/Activity;)I

    move-result p1

    invoke-static {p1}, Lcom/facebook/react/views/modal/ReactModalHostView;->access$setStatusBarHeight$cp(I)V

    return-void
.end method
