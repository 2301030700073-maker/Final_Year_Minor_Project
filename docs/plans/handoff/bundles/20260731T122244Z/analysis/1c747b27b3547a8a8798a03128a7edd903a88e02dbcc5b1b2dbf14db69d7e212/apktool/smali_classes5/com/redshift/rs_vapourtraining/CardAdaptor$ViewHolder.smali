.class public Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redshift/rs_vapourtraining/CardAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private cardCVV:Landroid/widget/TextView;

.field private cardName:Landroid/widget/TextView;

.field private cardNumber:Landroid/widget/TextView;

.field private expiryDate:Landroid/widget/TextView;

.field public singleItemCardView:Landroidx/cardview/widget/CardView;

.field final synthetic this$0:Lcom/redshift/rs_vapourtraining/CardAdaptor;


# direct methods
.method public constructor <init>(Lcom/redshift/rs_vapourtraining/CardAdaptor;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/redshift/rs_vapourtraining/CardAdaptor;
    .param p2, "itemView"    # Landroid/view/View;

    .line 85
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->this$0:Lcom/redshift/rs_vapourtraining/CardAdaptor;

    .line 86
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    const v0, 0x7f080075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->cardName:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f080076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->cardNumber:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f080007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->expiryDate:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f080074

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->cardCVV:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0801ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->singleItemCardView:Landroidx/cardview/widget/CardView;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;

    .line 79
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->cardName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;

    .line 79
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->cardNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;

    .line 79
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->expiryDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;

    .line 79
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/CardAdaptor$ViewHolder;->cardCVV:Landroid/widget/TextView;

    return-object v0
.end method
