.class public final Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "BannerAdView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->createAdListener()Lcom/google/android/gms/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1",
        "Lcom/google/android/gms/ads/AdListener;",
        "onAdLoaded",
        "",
        "onAdFailedToLoad",
        "error",
        "Lcom/google/android/gms/ads/LoadAdError;",
        "onAdClicked",
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
.field final synthetic this$0:Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;


# direct methods
.method constructor <init>(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;

    .line 118
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 151
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 152
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "createMap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "onAdClicked"

    invoke-static {v0, v2, v1}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->access$sendEvent(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 144
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->access$setLoading$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;Z)V

    .line 145
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 145
    const-string p1, "apply(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "onAdFailedToLoad"

    invoke-static {v1, p1, v2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->access$sendEvent(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 6

    .line 120
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 121
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->access$setLoading$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;Z)V

    .line 124
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;

    invoke-static {v0}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->access$getBannerAdView$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;)Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;

    .line 125
    invoke-virtual {v2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 126
    invoke-static {v2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->access$getAdWidth$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 127
    invoke-static {v2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->access$getAdHeight$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 130
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 131
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 129
    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->measure(II)V

    .line 133
    invoke-virtual {v0, v1, v1, v4, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->layout(IIII)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    iget-object v2, p0, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView$createAdListener$1;->this$0:Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;

    .line 137
    const-string/jumbo v3, "width"

    invoke-static {v2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->access$getAdWidth$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v3, "height"

    invoke-static {v2}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->access$getAdHeight$p(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;)I

    move-result v2

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 139
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 136
    const-string v2, "apply(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "onAdLoaded"

    invoke-static {v0, v2, v1}, Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;->access$sendEvent(Lcom/allproperty/android/consumer/modules/dfp/BannerAdView;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
