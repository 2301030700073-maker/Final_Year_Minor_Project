.class public final synthetic Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Callback;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda53;->f$0:Lcom/facebook/react/bridge/Callback;

    iput-object p2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda53;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda53;->f$2:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda53;->f$0:Lcom/facebook/react/bridge/Callback;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda53;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda53;->f$2:Lorg/json/JSONArray;

    check-cast p1, Lcom/braze/BrazeUser;

    invoke-static {v0, v1, v2, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->$r8$lambda$dFkfnvPf-aIBtYmyggl4fXABJRI(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;Lorg/json/JSONArray;Lcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
