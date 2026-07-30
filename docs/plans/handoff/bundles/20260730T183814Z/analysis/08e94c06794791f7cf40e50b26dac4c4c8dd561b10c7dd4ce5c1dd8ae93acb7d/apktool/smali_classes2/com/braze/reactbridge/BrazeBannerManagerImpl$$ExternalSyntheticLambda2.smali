.class public final synthetic Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/uimanager/ThemedReactContext;

.field public final synthetic f$1:Lcom/braze/reactbridge/BannerContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/braze/reactbridge/BannerContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/facebook/react/uimanager/ThemedReactContext;

    iput-object p2, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda2;->f$1:Lcom/braze/reactbridge/BannerContainer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda2;->f$1:Lcom/braze/reactbridge/BannerContainer;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->$r8$lambda$rGaMRfULBTBY_9qImecOaKu13O8(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/braze/reactbridge/BannerContainer;D)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
