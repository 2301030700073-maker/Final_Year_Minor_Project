.class public final Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;
.super Ljava/lang/Object;
.source "ActivityLandingZoneBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BigTitle:Landroid/widget/TextView;

.field public final LandLogin:Landroid/widget/Button;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final slogan:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "BigTitle"    # Landroid/widget/TextView;
    .param p3, "LandLogin"    # Landroid/widget/Button;
    .param p4, "slogan"    # Landroid/widget/TextView;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;->BigTitle:Landroid/widget/TextView;

    .line 36
    iput-object p3, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;->LandLogin:Landroid/widget/Button;

    .line 37
    iput-object p4, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;->slogan:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 67
    const v0, 0x7f080005

    .line 68
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, "BigTitle":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 73
    const v0, 0x7f080009

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 75
    .local v2, "LandLogin":Landroid/widget/Button;
    if-eqz v2, :cond_1

    .line 79
    const v0, 0x7f0801b1

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, "slogan":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 85
    new-instance v4, Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;

    move-object v5, p0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    return-object v4

    .line 82
    :cond_0
    goto :goto_0

    .line 76
    .end local v3    # "slogan":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 70
    .end local v2    # "LandLogin":Landroid/widget/Button;
    :cond_2
    nop

    .line 88
    .end local v1    # "BigTitle":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 54
    const v0, 0x7f0b001e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;->bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityLandingZoneBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
