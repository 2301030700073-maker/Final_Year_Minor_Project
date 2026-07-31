.class public Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ProductAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redshift/rs_vapourtraining/ProductAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private productDescTV:Landroid/widget/TextView;

.field private productNameTV:Landroid/widget/TextView;

.field private productPriceTV:Landroid/widget/TextView;

.field productURLTV:Landroid/widget/ImageView;

.field public singleItemCardView:Landroidx/cardview/widget/CardView;

.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/ProductAdaptor;


# direct methods
.method public constructor <init>(Lcom/redshift/rs_vapourtraining/ProductAdaptor;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/ProductAdaptor;
    .param p2, "itemView"    # Landroid/view/View;

    .line 91
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->this$0:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    .line 92
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 94
    const v0, 0x7f0800f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->productNameTV:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0800f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->productDescTV:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0800f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->productURLTV:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0800f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->productPriceTV:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0801ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->singleItemCardView:Landroidx/cardview/widget/CardView;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;

    .line 84
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->productNameTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;

    .line 84
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->productDescTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;

    .line 84
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ProductAdaptor$ViewHolder;->productPriceTV:Landroid/widget/TextView;

    return-object v0
.end method
