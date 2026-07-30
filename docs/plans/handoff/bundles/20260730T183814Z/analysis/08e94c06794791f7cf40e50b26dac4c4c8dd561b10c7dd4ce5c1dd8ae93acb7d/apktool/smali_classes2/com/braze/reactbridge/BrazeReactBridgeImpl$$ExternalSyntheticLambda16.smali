.class public final synthetic Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/reactbridge/BrazeReactBridgeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/reactbridge/BrazeReactBridgeImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda16;->f$0:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda16;->f$0:Lcom/braze/reactbridge/BrazeReactBridgeImpl;

    check-cast p1, Lcom/braze/events/FeatureFlagsUpdatedEvent;

    invoke-static {v0, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->$r8$lambda$t4DpXgmXpyVAKiYOd05yqXc19eM(Lcom/braze/reactbridge/BrazeReactBridgeImpl;Lcom/braze/events/FeatureFlagsUpdatedEvent;)V

    return-void
.end method
