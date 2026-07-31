.class public final Lcom/braze/reactbridge/BannerUtilKt;
.super Ljava/lang/Object;
.source "BannerUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerUtil.kt\ncom/braze/reactbridge/BannerUtilKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,29:1\n37#2,2:30\n*S KotlinDebug\n*F\n+ 1 BannerUtil.kt\ncom/braze/reactbridge/BannerUtilKt\n*L\n10#1:30,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "mapBanners",
        "Lcom/facebook/react/bridge/WritableArray;",
        "bannersList",
        "",
        "Lcom/braze/models/Banner;",
        "mapBanner",
        "Lcom/facebook/react/bridge/WritableMap;",
        "banner",
        "braze_react-native-sdk_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final mapBanner(Lcom/braze/models/Banner;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    const-string v0, "banner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 18
    const-string/jumbo v1, "trackingId"

    invoke-virtual {p0}, Lcom/braze/models/Banner;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v1, "placementId"

    invoke-virtual {p0}, Lcom/braze/models/Banner;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v1, "isTestSend"

    invoke-virtual {p0}, Lcom/braze/models/Banner;->isTestSend()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    const-string v1, "isControl"

    invoke-virtual {p0}, Lcom/braze/models/Banner;->isControl()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    const-string v1, "html"

    invoke-virtual {p0}, Lcom/braze/models/Banner;->getHtml()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/braze/models/Banner;->getExpirationTimestampSeconds()J

    move-result-wide v1

    long-to-double v1, v1

    const-string p0, "expiresAt"

    invoke-interface {v0, p0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final mapBanners(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/braze/models/Banner;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    const-string v0, "bannersList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 10
    check-cast p0, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 31
    new-array v2, v1, [Lcom/braze/models/Banner;

    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 10
    check-cast p0, [Lcom/braze/models/Banner;

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 11
    invoke-static {v3}, Lcom/braze/reactbridge/BannerUtilKt;->mapBanner(Lcom/braze/models/Banner;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
