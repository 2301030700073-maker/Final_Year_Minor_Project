.class public final Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;
.super Ljava/lang/Object;
.source "LoginLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final button:Landroid/widget/Button;

.field public final button2:Landroid/widget/Button;

.field public final editTextTextPassword:Landroid/widget/EditText;

.field public final editTextTextPersonName:Landroid/widget/EditText;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textView:Landroid/widget/TextView;

.field public final textView2:Landroid/widget/TextView;

.field public final textView3:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "button2"    # Landroid/widget/Button;
    .param p4, "editTextTextPassword"    # Landroid/widget/EditText;
    .param p5, "editTextTextPersonName"    # Landroid/widget/EditText;
    .param p6, "textView"    # Landroid/widget/TextView;
    .param p7, "textView2"    # Landroid/widget/TextView;
    .param p8, "textView3"    # Landroid/widget/TextView;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->button:Landroid/widget/Button;

    .line 51
    iput-object p3, p0, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->button2:Landroid/widget/Button;

    .line 52
    iput-object p4, p0, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->editTextTextPassword:Landroid/widget/EditText;

    .line 53
    iput-object p5, p0, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->editTextTextPersonName:Landroid/widget/EditText;

    .line 54
    iput-object p6, p0, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->textView:Landroid/widget/TextView;

    .line 55
    iput-object p7, p0, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->textView2:Landroid/widget/TextView;

    .line 56
    iput-object p8, p0, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->textView3:Landroid/widget/TextView;

    .line 57
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 86
    move-object/from16 v0, p0

    const v1, 0x7f08006d

    .line 87
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 88
    .local v2, "button":Landroid/widget/Button;
    if-eqz v2, :cond_6

    .line 92
    const v1, 0x7f08006e

    .line 93
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/Button;

    .line 94
    .local v12, "button2":Landroid/widget/Button;
    if-eqz v12, :cond_5

    .line 98
    const v1, 0x7f0800c1

    .line 99
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/EditText;

    .line 100
    .local v13, "editTextTextPassword":Landroid/widget/EditText;
    if-eqz v13, :cond_4

    .line 104
    const v1, 0x7f0800c2

    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/EditText;

    .line 106
    .local v14, "editTextTextPersonName":Landroid/widget/EditText;
    if-eqz v14, :cond_3

    .line 110
    const v1, 0x7f0801ec

    .line 111
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 112
    .local v15, "textView":Landroid/widget/TextView;
    if-eqz v15, :cond_2

    .line 116
    const v1, 0x7f0801ef

    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 118
    .local v16, "textView2":Landroid/widget/TextView;
    if-eqz v16, :cond_1

    .line 122
    const v1, 0x7f0801f0

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 124
    .local v17, "textView3":Landroid/widget/TextView;
    if-eqz v17, :cond_0

    .line 128
    new-instance v18, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v18

    .line 125
    :cond_0
    goto :goto_0

    .line 119
    .end local v17    # "textView3":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 113
    .end local v16    # "textView2":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 107
    .end local v15    # "textView":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 101
    .end local v14    # "editTextTextPersonName":Landroid/widget/EditText;
    :cond_4
    goto :goto_0

    .line 95
    .end local v13    # "editTextTextPassword":Landroid/widget/EditText;
    :cond_5
    goto :goto_0

    .line 89
    .end local v12    # "button2":Landroid/widget/Button;
    :cond_6
    nop

    .line 131
    .end local v2    # "button":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 73
    const v0, 0x7f0b0039

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/databinding/LoginLayoutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
