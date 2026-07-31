.class public final Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;
.super Ljava/lang/Object;
.source "DfpCustomFormatAdLoader.kt"

# interfaces
.implements Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader;
.implements Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;
.implements Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B+\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0017\u001a\u00020\u0012H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;",
        "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader;",
        "Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;",
        "Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;",
        "mContext",
        "Landroid/content/Context;",
        "adUnitId",
        "",
        "templateId",
        "customTargeting",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V",
        "adLoader",
        "Lcom/google/android/gms/ads/AdLoader;",
        "callback",
        "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;",
        "onCustomClick",
        "",
        "ad",
        "Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;",
        "key",
        "setCallback",
        "loadAd",
        "onCustomFormatAdLoaded",
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
.field private adLoader:Lcom/google/android/gms/ads/AdLoader;

.field private callback:Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;

.field private final customTargeting:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p4, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->customTargeting:Lcom/facebook/react/bridge/ReadableMap;

    .line 50
    new-instance p4, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p4, p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    move-object p2, p0

    check-cast p2, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    invoke-virtual {p4, p3, p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->forCustomFormatAd(Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader$1;

    invoke-direct {p2, p0}, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader$1;-><init>(Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;)V

    check-cast p2, Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->adLoader:Lcom/google/android/gms/ads/AdLoader;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;)Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->callback:Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;

    return-object p0
.end method


# virtual methods
.method public loadAd()V
    .locals 5

    .line 31
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->customTargeting:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v1, :cond_1

    .line 35
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v2

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->adLoader:Lcom/google/android/gms/ads/AdLoader;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    return-void
.end method

.method public onCustomClick(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->callback:Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;-><init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    check-cast v1, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;

    invoke-interface {v0, v1, p2}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;->onAdClicked(Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCustomFormatAdLoaded(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->callback:Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;

    invoke-direct {v1, p1}, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;-><init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    check-cast v1, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;

    invoke-interface {v0, v1}, Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;->onAdLoaded(Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;)V

    .line 63
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->recordImpression()V

    return-void
.end method

.method public setCallback(Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;->callback:Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;

    return-void
.end method
