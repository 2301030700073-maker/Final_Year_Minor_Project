.class Lcom/facebook/reactnative/androidsdk/FBProfileModule$2;
.super Lcom/facebook/ProfileTracker;
.source "FBProfileModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/reactnative/androidsdk/FBProfileModule;->getCurrentProfile(Lcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/reactnative/androidsdk/FBProfileModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/facebook/reactnative/androidsdk/FBProfileModule;Ljava/util/Timer;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBProfileModule$2;->this$0:Lcom/facebook/reactnative/androidsdk/FBProfileModule;

    iput-object p2, p0, Lcom/facebook/reactnative/androidsdk/FBProfileModule$2;->val$timer:Ljava/util/Timer;

    iput-object p3, p0, Lcom/facebook/reactnative/androidsdk/FBProfileModule$2;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Lcom/facebook/ProfileTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBProfileModule$2;->val$timer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 59
    iget-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBProfileModule$2;->this$0:Lcom/facebook/reactnative/androidsdk/FBProfileModule;

    invoke-static {p1}, Lcom/facebook/reactnative/androidsdk/FBProfileModule;->-$$Nest$fgetmProfileTracker(Lcom/facebook/reactnative/androidsdk/FBProfileModule;)Lcom/facebook/ProfileTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ProfileTracker;->stopTracking()V

    .line 60
    iget-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBProfileModule$2;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-static {p2}, Lcom/facebook/reactnative/androidsdk/Utility;->profileToReactMap(Lcom/facebook/Profile;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
