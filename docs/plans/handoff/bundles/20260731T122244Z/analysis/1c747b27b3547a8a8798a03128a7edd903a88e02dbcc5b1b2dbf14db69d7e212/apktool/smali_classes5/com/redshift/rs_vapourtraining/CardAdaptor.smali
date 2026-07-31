.class public Lcom/redshift/rs_vapourtraining/CardAdaptor;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CardAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;,
        Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private cardModalArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/redshift/rs_vapourtraining/CardModal;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private listener:Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/redshift/rs_vapourtraining/CardModal;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 30
    .local p1, "cardModalArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/redshift/rs_vapourtraining/CardModal;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor;->cardModalArrayList:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$400(Lcom/redshift/rs_vapourtraining/CardAdaptor;)Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/CardAdaptor;

    .line 20
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor;->listener:Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor;->cardModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/redshift/rs_vapourtraining/CardAdaptor;->onBindViewHolder(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;
    .param p2, "position"    # I

    .line 52
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor;->cardModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redshift/rs_vapourtraining/CardModal;

    .line 53
    .local v0, "modal":Lcom/redshift/rs_vapourtraining/CardModal;
    invoke-static {p1}, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->access$000(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/CardModal;->getNameoncard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {p1}, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->access$100(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/CardModal;->getCardNummber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {p1}, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->access$200(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/CardModal;->getExpiryDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {p1}, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->access$300(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/redshift/rs_vapourtraining/CardModal;->getCvv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p1, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->singleItemCardView:Landroidx/cardview/widget/CardView;

    new-instance v2, Lcom/redshift/rs_vapourtraining/CardAdaptor$1;

    invoke-direct {v2, p0, v0}, Lcom/redshift/rs_vapourtraining/CardAdaptor$1;-><init>(Lcom/redshift/rs_vapourtraining/CardAdaptor;Lcom/redshift/rs_vapourtraining/CardModal;)V

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/redshift/rs_vapourtraining/CardAdaptor;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;-><init>(Lcom/redshift/rs_vapourtraining/CardAdaptor;Landroid/view/View;)V

    return-object v1
.end method

.method public setWhenClickListener(Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;

    .line 36
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor;->listener:Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;

    .line 37
    return-void
.end method
