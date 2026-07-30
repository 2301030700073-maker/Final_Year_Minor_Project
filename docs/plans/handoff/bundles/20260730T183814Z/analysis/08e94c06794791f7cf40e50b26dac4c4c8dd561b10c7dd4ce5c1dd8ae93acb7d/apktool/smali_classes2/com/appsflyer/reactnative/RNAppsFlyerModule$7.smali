.class Lcom/appsflyer/reactnative/RNAppsFlyerModule$7;
.super Ljava/lang/Object;
.source "RNAppsFlyerModule.java"

# interfaces
.implements Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/reactnative/RNAppsFlyerModule;->validateAndLogInAppPurchaseV2(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/reactnative/RNAppsFlyerModule;


# direct methods
.method constructor <init>(Lcom/appsflyer/reactnative/RNAppsFlyerModule;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/appsflyer/reactnative/RNAppsFlyerModule$7;->this$0:Lcom/appsflyer/reactnative/RNAppsFlyerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInAppPurchaseValidationError(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/appsflyer/reactnative/RNAppsFlyerModule$7;->this$0:Lcom/appsflyer/reactnative/RNAppsFlyerModule;

    invoke-static {v0, p1}, Lcom/appsflyer/reactnative/RNAppsFlyerModule;->-$$Nest$msendValidationResult(Lcom/appsflyer/reactnative/RNAppsFlyerModule;Ljava/util/Map;)V

    return-void
.end method

.method public onInAppPurchaseValidationFinished(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/appsflyer/reactnative/RNAppsFlyerModule$7;->this$0:Lcom/appsflyer/reactnative/RNAppsFlyerModule;

    invoke-static {v0, p1}, Lcom/appsflyer/reactnative/RNAppsFlyerModule;->-$$Nest$msendValidationResult(Lcom/appsflyer/reactnative/RNAppsFlyerModule;Ljava/util/Map;)V

    return-void
.end method
