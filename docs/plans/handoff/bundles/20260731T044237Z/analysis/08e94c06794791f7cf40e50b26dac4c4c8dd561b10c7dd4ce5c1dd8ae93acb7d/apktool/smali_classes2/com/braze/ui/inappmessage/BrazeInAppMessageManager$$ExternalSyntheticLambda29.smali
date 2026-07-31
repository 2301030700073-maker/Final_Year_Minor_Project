.class public final synthetic Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda29;->f$0:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    iput-object p2, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda29;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda29;->f$0:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda29;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/braze/events/BrazeUserChangeEvent;

    invoke-static {v0, v1, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->$r8$lambda$_uB50a3LZdxz25kbEwMaqeRkJ1M(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Landroid/content/Context;Lcom/braze/events/BrazeUserChangeEvent;)V

    return-void
.end method
