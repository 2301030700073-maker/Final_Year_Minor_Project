.class Lcom/redshift/rs_vapourtraining/CardAdaptor$1;
.super Ljava/lang/Object;
.source "CardAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/CardAdaptor;->onBindViewHolder(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/CardAdaptor;

.field final synthetic val$modal:Lcom/redshift/rs_vapourtraining/CardModal;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/CardAdaptor;Lcom/redshift/rs_vapourtraining/CardModal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/CardAdaptor;

    .line 57
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$1;->this$0:Lcom/redshift/rs_vapourtraining/CardAdaptor;

    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$1;->val$modal:Lcom/redshift/rs_vapourtraining/CardModal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$1;->this$0:Lcom/redshift/rs_vapourtraining/CardAdaptor;

    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/CardAdaptor;->access$400(Lcom/redshift/rs_vapourtraining/CardAdaptor;)Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$1;->this$0:Lcom/redshift/rs_vapourtraining/CardAdaptor;

    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/CardAdaptor;->access$400(Lcom/redshift/rs_vapourtraining/CardAdaptor;)Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$1;->val$modal:Lcom/redshift/rs_vapourtraining/CardModal;

    invoke-interface {v0, v1}, Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;->onItemClick(Lcom/redshift/rs_vapourtraining/CardModal;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 67
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method
