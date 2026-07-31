.class Lcom/redshift/rs_vapourtraining/ProductAdaptor$1;
.super Ljava/lang/Object;
.source "ProductAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/ProductAdaptor;->onBindViewHolder(Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

.field final synthetic val$modal:Lcom/redshift/rs_vapourtraining/ProductModal;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/ProductAdaptor;Lcom/redshift/rs_vapourtraining/ProductModal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    .line 64
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$1;->this$0:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$1;->val$modal:Lcom/redshift/rs_vapourtraining/ProductModal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$1;->this$0:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->access$300(Lcom/redshift/rs_vapourtraining/ProductAdaptor;)Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$1;->this$0:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->access$300(Lcom/redshift/rs_vapourtraining/ProductAdaptor;)Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$1;->val$modal:Lcom/redshift/rs_vapourtraining/ProductModal;

    invoke-interface {v0, v1}, Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;->onItemClick(Lcom/redshift/rs_vapourtraining/ProductModal;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method
