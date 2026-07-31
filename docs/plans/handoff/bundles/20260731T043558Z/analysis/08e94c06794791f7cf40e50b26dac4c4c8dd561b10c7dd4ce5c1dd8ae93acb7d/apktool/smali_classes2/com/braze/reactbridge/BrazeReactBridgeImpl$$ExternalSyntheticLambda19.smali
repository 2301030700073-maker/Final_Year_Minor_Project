.class public final synthetic Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Callback;

.field public final synthetic f$1:Lcom/braze/enums/Gender;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/Gender;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda19;->f$0:Lcom/facebook/react/bridge/Callback;

    iput-object p2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda19;->f$1:Lcom/braze/enums/Gender;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda19;->f$0:Lcom/facebook/react/bridge/Callback;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda19;->f$1:Lcom/braze/enums/Gender;

    check-cast p1, Lcom/braze/BrazeUser;

    invoke-static {v0, v1, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->$r8$lambda$hh_6ucuMwA-jvLZK7tlWBDWNh3w(Lcom/facebook/react/bridge/Callback;Lcom/braze/enums/Gender;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
