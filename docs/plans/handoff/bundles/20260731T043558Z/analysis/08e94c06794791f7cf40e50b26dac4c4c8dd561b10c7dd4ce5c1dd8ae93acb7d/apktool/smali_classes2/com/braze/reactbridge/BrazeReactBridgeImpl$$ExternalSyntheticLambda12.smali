.class public final synthetic Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Callback;

.field public final synthetic f$1:Lcom/braze/enums/NotificationSubscriptionType;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/NotificationSubscriptionType;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda12;->f$0:Lcom/facebook/react/bridge/Callback;

    iput-object p2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda12;->f$1:Lcom/braze/enums/NotificationSubscriptionType;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda12;->f$0:Lcom/facebook/react/bridge/Callback;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda12;->f$1:Lcom/braze/enums/NotificationSubscriptionType;

    check-cast p1, Lcom/braze/BrazeUser;

    invoke-static {v0, v1, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->$r8$lambda$ElPnSG0x8vlPNfYJQ_zKqaAUM7Y(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/NotificationSubscriptionType;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
