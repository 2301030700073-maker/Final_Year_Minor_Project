.class public final synthetic Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Landroid/webkit/CookieManager;

.field public final synthetic f$1:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/CookieManager;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda2;->f$0:Landroid/webkit/CookieManager;

    iput-object p2, p0, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda2;->f$1:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda2;->f$0:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda2;->f$1:Lcom/facebook/react/bridge/Promise;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/propertyguru/webkit/CookieManager;->$r8$lambda$FCXkTlzjZBuCVLLJiPXXVsp7xOY(Landroid/webkit/CookieManager;Lcom/facebook/react/bridge/Promise;Ljava/lang/Boolean;)V

    return-void
.end method
