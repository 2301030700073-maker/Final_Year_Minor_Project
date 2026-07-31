.class public final synthetic Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/braze/events/IFireOnceEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Promise;

.field public final synthetic f$1:Lcom/braze/reactbridge/BrazeReactBridgeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Promise;Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda2;->f$0:Lcom/facebook/react/bridge/Promise;

    iput-object p2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda2;->f$1:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda2;->f$0:Lcom/facebook/react/bridge/Promise;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda2;->f$1:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    check-cast p1, Lcom/braze/events/ContentCardsUpdatedEvent;

    invoke-static {v0, v1, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->$r8$lambda$66QiyCKX5jyTyVCf-q0EF5CVe0Y(Lcom/facebook/react/bridge/Promise;Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/ContentCardsUpdatedEvent;)V

    return-void
.end method
