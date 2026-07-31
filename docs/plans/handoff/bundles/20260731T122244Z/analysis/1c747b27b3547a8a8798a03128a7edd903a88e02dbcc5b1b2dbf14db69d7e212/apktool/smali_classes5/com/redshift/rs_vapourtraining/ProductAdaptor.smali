.class public Lcom/redshift/rs_vapourtraining/ProductAdaptor;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ProductAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;,
        Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;

.field private productModalArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/redshift/rs_vapourtraining/ProductModal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/redshift/rs_vapourtraining/ProductModal;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 30
    .local p1, "productModalArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/redshift/rs_vapourtraining/ProductModal;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->productModalArrayList:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$300(Lcom/redshift/rs_vapourtraining/ProductAdaptor;)Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    .line 20
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->listener:Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->productModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->onBindViewHolder(Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;
    .param p2, "position"    # I

    .line 54
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->productModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redshift/rs_vapourtraining/ProductModal;

    .line 55
    .local v0, "modal":Lcom/redshift/rs_vapourtraining/ProductModal;
    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/ProductModal;->getproductURL()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 59
    const v3, 0x7f07006e

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p1, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->productURLTV:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 61
    invoke-static {p1}, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->access$000(Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/ProductModal;->getproductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {p1}, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->access$100(Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/ProductModal;->getproductDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {p1}, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->access$200(Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/ProductModal;->getproductPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p1, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->singleItemCardView:Landroidx/cardview/widget/CardView;

    new-instance v3, Lcom/redshift/rs_vapourtraining/ProductAdaptor$1;

    invoke-direct {v3, p0, v0}, Lcom/redshift/rs_vapourtraining/ProductAdaptor$1;-><init>(Lcom/redshift/rs_vapourtraining/ProductAdaptor;Lcom/redshift/rs_vapourtraining/ProductModal;)V

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;-><init>(Lcom/redshift/rs_vapourtraining/ProductAdaptor;Landroid/view/View;)V

    return-object v1
.end method

.method public setWhenClickListener(Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;

    .line 36
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->listener:Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;

    .line 37
    return-void
.end method
