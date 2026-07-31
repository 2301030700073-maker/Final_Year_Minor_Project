.class Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment$1;
.super Ljava/lang/Object;
.source "BuyCreditsFragment.java"

# interfaces
.implements Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;

    .line 67
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/redshift/rs_vapourtraining/CardModal;)V
    .locals 3
    .param p1, "rvCardModel"    # Lcom/redshift/rs_vapourtraining/CardModal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;

    invoke-virtual {v1}, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/redshift/rs_vapourtraining/WebViewCredits;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/redshift/rs_vapourtraining/CardModal;->getNameoncard()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cardName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;

    invoke-virtual {v1, v0}, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
