.class public final Lcom/braze/reactbridge/BrazeBannerManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "BrazeBannerManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/BrazeBannerViewManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "BrazeBannerView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/braze/reactbridge/BannerContainer;",
        ">;",
        "Lcom/facebook/react/viewmanagers/BrazeBannerViewManagerInterface<",
        "Lcom/braze/reactbridge/BannerContainer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u000fH\u0014J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\rH\u0017J\u001a\u0010\u0014\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0018\u00010\u0015H\u0016R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/braze/reactbridge/BrazeBannerManager;",
        "Lcom/facebook/react/uimanager/SimpleViewManager;",
        "Lcom/braze/reactbridge/BannerContainer;",
        "Lcom/facebook/react/viewmanagers/BrazeBannerViewManagerInterface;",
        "context",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "delegate",
        "Lcom/facebook/react/viewmanagers/BrazeBannerViewManagerDelegate;",
        "getDelegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "getName",
        "",
        "createViewInstance",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "setPlacementID",
        "",
        "view",
        "placementID",
        "getExportedCustomBubblingEventTypeConstants",
        "",
        "",
        "braze_react-native-sdk_release"
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
.field private final delegate:Lcom/facebook/react/viewmanagers/BrazeBannerViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/viewmanagers/BrazeBannerViewManagerDelegate<",
            "Lcom/braze/reactbridge/BannerContainer;",
            "Lcom/braze/reactbridge/BrazeBannerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 17
    new-instance p1, Lcom/facebook/react/viewmanagers/BrazeBannerViewManagerDelegate;

    move-object v0, p0

    check-cast v0, Lcom/facebook/react/uimanager/BaseViewManager;

    invoke-direct {p1, v0}, Lcom/facebook/react/viewmanagers/BrazeBannerViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeBannerManager;->delegate:Lcom/facebook/react/viewmanagers/BrazeBannerViewManagerDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/braze/reactbridge/BrazeBannerManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/braze/reactbridge/BannerContainer;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/braze/reactbridge/BannerContainer;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->INSTANCE:Lcom/braze/reactbridge/BrazeBannerManagerImpl;

    invoke-virtual {v0, p1}, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/braze/reactbridge/BannerContainer;

    move-result-object p1

    return-object p1
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/braze/reactbridge/BannerContainer;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeBannerManager;->delegate:Lcom/facebook/react/viewmanagers/BrazeBannerViewManagerDelegate;

    check-cast v0, Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->INSTANCE:Lcom/braze/reactbridge/BrazeBannerManagerImpl;

    invoke-virtual {v0}, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "BrazeBannerView"

    return-object v0
.end method

.method public bridge synthetic setPlacementID(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/braze/reactbridge/BannerContainer;

    invoke-virtual {p0, p1, p2}, Lcom/braze/reactbridge/BrazeBannerManager;->setPlacementID(Lcom/braze/reactbridge/BannerContainer;Ljava/lang/String;)V

    return-void
.end method

.method public setPlacementID(Lcom/braze/reactbridge/BannerContainer;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "placementID"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->INSTANCE:Lcom/braze/reactbridge/BrazeBannerManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->setPlacementID(Lcom/braze/reactbridge/BannerContainer;Ljava/lang/String;)V

    return-void
.end method
