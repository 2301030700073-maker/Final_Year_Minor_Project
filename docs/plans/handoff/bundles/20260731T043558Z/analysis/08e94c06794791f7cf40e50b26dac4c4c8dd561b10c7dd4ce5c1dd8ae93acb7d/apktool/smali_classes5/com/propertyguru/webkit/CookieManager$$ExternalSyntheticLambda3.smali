.class public final synthetic Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/WritableArray;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/WritableArray;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda3;->f$0:Lcom/facebook/react/bridge/WritableArray;

    iput-object p2, p0, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda3;->f$0:Lcom/facebook/react/bridge/WritableArray;

    iget-object v1, p0, Lcom/propertyguru/webkit/CookieManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/propertyguru/webkit/CookieManager;->$r8$lambda$8GbMJEjnGk85B3UY0oCEqG8-nw4(Lcom/facebook/react/bridge/WritableArray;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V

    return-void
.end method
