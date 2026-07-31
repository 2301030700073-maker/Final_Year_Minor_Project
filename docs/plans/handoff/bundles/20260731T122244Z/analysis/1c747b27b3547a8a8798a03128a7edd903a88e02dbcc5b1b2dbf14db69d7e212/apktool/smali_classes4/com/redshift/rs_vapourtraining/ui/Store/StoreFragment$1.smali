.class Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;


# direct methods
.method constructor <init>(Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    .line 58
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/redshift/rs_vapourtraining/ProductModal;)V
    .locals 13
    .param p1, "rvProductModel"    # Lcom/redshift/rs_vapourtraining/ProductModal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/redshift/rs_vapourtraining/ProductModal;->getproductName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "userRS"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "userID":Ljava/lang/String;
    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    invoke-static {v3}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->access$000(Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;)Lcom/redshift/rs_vapourtraining/DBHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/redshift/rs_vapourtraining/DBHandler;->getCreds(Ljava/lang/String;)I

    move-result v3

    .line 66
    .local v3, "userCredits":I
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    invoke-virtual {v4}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Credits: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 67
    invoke-virtual {p1}, Lcom/redshift/rs_vapourtraining/ProductModal;->getProductCreditsworth()I

    move-result v4

    .line 68
    .local v4, "productCreds":I
    sub-int v5, v3, v4

    .line 69
    .local v5, "userBalance":I
    if-lez v5, :cond_0

    .line 70
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v6, "json":Lorg/json/JSONObject;
    const-string v7, "name"

    const-string v8, "student"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 73
    .local v8, "array":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v9, "item":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/redshift/rs_vapourtraining/ProductModal;->getproductName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-virtual {p1}, Lcom/redshift/rs_vapourtraining/ProductModal;->getId()I

    move-result v7

    const-string v10, "ID"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {p1}, Lcom/redshift/rs_vapourtraining/ProductModal;->getproductPrice()Ljava/lang/String;

    move-result-object v7

    const-string v10, "price"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v7, "userID"

    invoke-virtual {v9, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 79
    const-string v7, "course"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "message":Ljava/lang/String;
    iget-object v10, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    invoke-virtual {v10}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-static {v10, v7, v11}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->access$100(Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;Ljava/lang/String;Landroid/content/Context;)V

    .line 84
    iget-object v10, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    invoke-static {v10}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->access$000(Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;)Lcom/redshift/rs_vapourtraining/DBHandler;

    move-result-object v10

    invoke-virtual {p1}, Lcom/redshift/rs_vapourtraining/ProductModal;->getId()I

    move-result v11

    invoke-virtual {v10, v1, v11}, Lcom/redshift/rs_vapourtraining/DBHandler;->buyGame(Ljava/lang/String;I)V

    .line 85
    iget-object v10, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    invoke-static {v10}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->access$000(Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;)Lcom/redshift/rs_vapourtraining/DBHandler;

    move-result-object v10

    invoke-virtual {v10, v1, v5}, Lcom/redshift/rs_vapourtraining/DBHandler;->updateCredits(Ljava/lang/String;I)V

    .line 86
    iget-object v10, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    invoke-virtual {v10}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bought: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/redshift/rs_vapourtraining/ProductModal;->getproductName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 87
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v8    # "array":Lorg/json/JSONArray;
    .end local v9    # "item":Lorg/json/JSONObject;
    goto :goto_0

    .line 88
    .end local v7    # "message":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;->this$0:Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    invoke-virtual {v6}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Insuffcient credits!"

    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 90
    :goto_0
    return-void
.end method
