.class public final synthetic Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/braze/enums/inappmessage/ClickAction;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;ZLcom/braze/enums/inappmessage/ClickAction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda27;->f$0:Landroid/net/Uri;

    iput-boolean p2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda27;->f$1:Z

    iput-object p3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda27;->f$2:Lcom/braze/enums/inappmessage/ClickAction;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda27;->f$0:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda27;->f$1:Z

    iget-object v2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda27;->f$2:Lcom/braze/enums/inappmessage/ClickAction;

    invoke-static {v0, v1, v2}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->$r8$lambda$222nkxml1PyqoFHMe0RWPFHyM0o(Landroid/net/Uri;ZLcom/braze/enums/inappmessage/ClickAction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
