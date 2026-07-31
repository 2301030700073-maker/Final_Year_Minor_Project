.class public final Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;
.super Landroid/widget/FrameLayout;
.source "BannerAdView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0007J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0007J\u0010\u0010\u001b\u001a\u00020\u00162\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0011J\u0008\u0010\u001d\u001a\u00020\u0016H\u0002J\u0008\u0010\u001e\u001a\u00020\u0016H\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0018\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020$H\u0002J\u0008\u0010%\u001a\u00020\u0016H\u0014J\u0018\u0010&\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\u0007H\u0014J0\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u0007H\u0014R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "bannerAdView",
        "Lcom/google/android/gms/ads/admanager/AdManagerAdView;",
        "adUnitId",
        "",
        "adWidth",
        "adHeight",
        "customTargeting",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "isLoading",
        "",
        "hasAllProps",
        "setAdUnitID",
        "",
        "setAdWidth",
        "width",
        "setAdHeight",
        "height",
        "setTargeting",
        "targeting",
        "checkAndLoadAd",
        "loadAdIfReady",
        "createAdListener",
        "Lcom/google/android/gms/ads/AdListener;",
        "sendEvent",
        "eventName",
        "params",
        "Lcom/facebook/react/bridge/WritableMap;",
        "onDetachedFromWindow",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onLayout",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "app_myPublicRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private adHeight:I

.field private adUnitId:Ljava/lang/String;

.field private adWidth:I

.field private bannerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field private customTargeting:Lcom/facebook/react/bridge/ReadableMap;

.field private hasAllProps:Z

.field private isLoading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xfa

    .line 26
    iput p1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adWidth:I

    .line 27
    iput p1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adHeight:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getAdHeight$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adHeight:I

    return p0
.end method

.method public static final synthetic access$getAdWidth$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adWidth:I

    return p0
.end method

.method public static final synthetic access$getBannerAdView$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;)Lcom/google/android/gms/ads/admanager/AdManagerAdView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->bannerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    return-object p0
.end method

.method public static final synthetic access$sendEvent(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public static final synthetic access$setLoading$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->isLoading:Z

    return-void
.end method

.method private final checkAndLoadAd()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->hasAllProps:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adUnitId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->loadAdIfReady()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final createAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 118
    new-instance v0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;

    invoke-direct {v0, p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;-><init>(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;)V

    check-cast v0, Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method private final loadAdIfReady()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adUnitId:Ljava/lang/String;

    .line 64
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 68
    :cond_0
    iget-boolean v1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->isLoading:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->isLoading:Z

    .line 75
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->bannerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v1, :cond_2

    .line 76
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->removeView(Landroid/view/View;)V

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->destroy()V

    .line 81
    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adWidth:I

    iget v3, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adHeight:I

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 84
    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->createAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 81
    iput-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->bannerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 88
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->customTargeting:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v1, :cond_4

    .line 92
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v2

    .line 93
    :cond_3
    :goto_0
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 97
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    goto :goto_0

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->bannerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v1, :cond_5

    .line 104
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 108
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    check-cast v1, Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    :cond_5
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->bannerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private final sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 159
    const-class v1, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 160
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 165
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->bannerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->destroy()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 180
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 170
    iget v1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 171
    iget v2, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 173
    invoke-static {v1, p1}, Landroid/widget/FrameLayout;->resolveSize(II)I

    move-result p1

    .line 174
    invoke-static {v0, p2}, Landroid/widget/FrameLayout;->resolveSize(II)I

    move-result p2

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setAdHeight(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adHeight:I

    .line 45
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->requestLayout()V

    .line 46
    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->checkAndLoadAd()V

    return-void
.end method

.method public final setAdUnitID(Ljava/lang/String;)V
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adUnitId:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->checkAndLoadAd()V

    return-void
.end method

.method public final setAdWidth(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->adWidth:I

    .line 39
    invoke-virtual {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->requestLayout()V

    .line 40
    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->checkAndLoadAd()V

    return-void
.end method

.method public final setTargeting(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->customTargeting:Lcom/facebook/react/bridge/ReadableMap;

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->hasAllProps:Z

    .line 52
    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->checkAndLoadAd()V

    return-void
.end method
