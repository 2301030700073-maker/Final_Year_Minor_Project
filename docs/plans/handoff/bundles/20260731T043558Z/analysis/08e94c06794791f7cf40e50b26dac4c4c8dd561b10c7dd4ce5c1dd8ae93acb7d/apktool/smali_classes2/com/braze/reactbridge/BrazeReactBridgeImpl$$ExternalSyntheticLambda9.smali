.class public final synthetic Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

.field public final synthetic f$1:Lcom/facebook/react/bridge/Callback;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/braze/enums/CardCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/enums/CardCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;->f$0:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    iput-object p2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;->f$1:Lcom/facebook/react/bridge/Callback;

    iput-object p3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;->f$3:Lcom/braze/enums/CardCategory;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;->f$0:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;->f$1:Lcom/facebook/react/bridge/Callback;

    iget-object v2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda9;->f$3:Lcom/braze/enums/CardCategory;

    check-cast p1, Lcom/braze/events/FeedUpdatedEvent;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->$r8$lambda$XXH3nB83BIwVJOZXVAVnzkyz2MY(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lcom/braze/enums/CardCategory;Lcom/braze/events/FeedUpdatedEvent;)V

    return-void
.end method
