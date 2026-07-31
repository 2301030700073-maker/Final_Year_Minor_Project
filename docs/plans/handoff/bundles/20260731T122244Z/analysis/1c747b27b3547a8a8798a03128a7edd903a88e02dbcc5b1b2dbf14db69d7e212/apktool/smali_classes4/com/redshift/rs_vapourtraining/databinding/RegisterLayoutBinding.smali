.class public final Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;
.super Ljava/lang/Object;
.source "RegisterLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final button:Landroid/widget/Button;

.field public final registerPassword:Landroid/widget/EditText;

.field public final registerUsername:Landroid/widget/EditText;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textView:Landroid/widget/TextView;

.field public final textView12:Landroid/widget/TextView;

.field public final textView13:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "registerPassword"    # Landroid/widget/EditText;
    .param p4, "registerUsername"    # Landroid/widget/EditText;
    .param p5, "textView"    # Landroid/widget/TextView;
    .param p6, "textView12"    # Landroid/widget/TextView;
    .param p7, "textView13"    # Landroid/widget/TextView;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->button:Landroid/widget/Button;

    .line 47
    iput-object p3, p0, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->registerPassword:Landroid/widget/EditText;

    .line 48
    iput-object p4, p0, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->registerUsername:Landroid/widget/EditText;

    .line 49
    iput-object p5, p0, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->textView:Landroid/widget/TextView;

    .line 50
    iput-object p6, p0, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->textView12:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->textView13:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 81
    move-object/from16 v0, p0

    const v1, 0x7f08006d

    .line 82
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 83
    .local v2, "button":Landroid/widget/Button;
    if-eqz v2, :cond_5

    .line 87
    const v1, 0x7f080185

    .line 88
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/EditText;

    .line 89
    .local v11, "registerPassword":Landroid/widget/EditText;
    if-eqz v11, :cond_4

    .line 93
    const v1, 0x7f080186

    .line 94
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/EditText;

    .line 95
    .local v12, "registerUsername":Landroid/widget/EditText;
    if-eqz v12, :cond_3

    .line 99
    const v1, 0x7f0801ec

    .line 100
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 101
    .local v13, "textView":Landroid/widget/TextView;
    if-eqz v13, :cond_2

    .line 105
    const v1, 0x7f0801ed

    .line 106
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 107
    .local v14, "textView12":Landroid/widget/TextView;
    if-eqz v14, :cond_1

    .line 111
    const v1, 0x7f0801ee

    .line 112
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 113
    .local v15, "textView13":Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 117
    new-instance v16, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v16

    .line 114
    :cond_0
    goto :goto_0

    .line 108
    .end local v15    # "textView13":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 102
    .end local v14    # "textView12":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 96
    .end local v13    # "textView":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 90
    .end local v12    # "registerUsername":Landroid/widget/EditText;
    :cond_4
    goto :goto_0

    .line 84
    .end local v11    # "registerPassword":Landroid/widget/EditText;
    :cond_5
    nop

    .line 120
    .end local v2    # "button":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 68
    const v0, 0x7f0b0070

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/databinding/RegisterLayoutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
