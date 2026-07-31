.class public final synthetic Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Callback;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda20;->f$0:Lcom/facebook/react/bridge/Callback;

    iput-object p2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda20;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda20;->f$0:Lcom/facebook/react/bridge/Callback;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda20;->f$2:I

    check-cast p1, Lcom/braze/BrazeUser;

    invoke-static {v0, v1, v2, p1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->$r8$lambda$VlNemDlhuN_bJ7Gry0BhSSzRKck(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;ILcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
