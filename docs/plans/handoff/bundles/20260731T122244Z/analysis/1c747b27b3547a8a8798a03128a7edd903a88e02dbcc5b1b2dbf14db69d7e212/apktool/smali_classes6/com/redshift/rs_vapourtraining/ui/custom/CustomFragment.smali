.class public Lcom/redshift/rs_vapourtraining/ui/custom/CustomFragment;
.super Landroidx/fragment/app/Fragment;
.source "CustomFragment.java"


# instance fields
.field cText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    const v0, 0x7f0b0036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f0801f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/redshift/rs_vapourtraining/ui/custom/CustomFragment;->cText:Landroid/widget/TextView;

    .line 26
    const-string v2, "Custom Fragment"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-object v0
.end method
