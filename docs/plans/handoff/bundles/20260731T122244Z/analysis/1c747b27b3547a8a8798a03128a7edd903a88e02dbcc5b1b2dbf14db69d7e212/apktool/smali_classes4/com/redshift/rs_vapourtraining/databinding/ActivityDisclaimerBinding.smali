.class public final Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;
.super Ljava/lang/Object;
.source "ActivityDisclaimerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BigTitle:Landroid/widget/TextView;

.field public final LandLogin:Landroid/widget/Button;

.field public final contest:Landroid/widget/Button;

.field public final ipAddress:Landroid/widget/EditText;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final slogan:Landroid/widget/TextView;

.field public final slogan2:Landroid/widget/TextView;

.field public final textView4:Landroid/widget/TextView;

.field public final textView5:Landroid/widget/TextView;

.field public final textView6:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "BigTitle"    # Landroid/widget/TextView;
    .param p3, "LandLogin"    # Landroid/widget/Button;
    .param p4, "contest"    # Landroid/widget/Button;
    .param p5, "ipAddress"    # Landroid/widget/EditText;
    .param p6, "slogan"    # Landroid/widget/TextView;
    .param p7, "slogan2"    # Landroid/widget/TextView;
    .param p8, "textView4"    # Landroid/widget/TextView;
    .param p9, "textView5"    # Landroid/widget/TextView;
    .param p10, "textView6"    # Landroid/widget/TextView;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->BigTitle:Landroid/widget/TextView;

    .line 57
    iput-object p3, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->LandLogin:Landroid/widget/Button;

    .line 58
    iput-object p4, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->contest:Landroid/widget/Button;

    .line 59
    iput-object p5, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->ipAddress:Landroid/widget/EditText;

    .line 60
    iput-object p6, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->slogan:Landroid/widget/TextView;

    .line 61
    iput-object p7, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->slogan2:Landroid/widget/TextView;

    .line 62
    iput-object p8, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->textView4:Landroid/widget/TextView;

    .line 63
    iput-object p9, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->textView5:Landroid/widget/TextView;

    .line 64
    iput-object p10, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->textView6:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;

    .line 94
    move-object/from16 v0, p0

    const v1, 0x7f080005

    .line 95
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 96
    .local v2, "BigTitle":Landroid/widget/TextView;
    if-eqz v2, :cond_8

    .line 100
    const v1, 0x7f080009

    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    .line 102
    .local v14, "LandLogin":Landroid/widget/Button;
    if-eqz v14, :cond_7

    .line 106
    const v1, 0x7f080094

    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/Button;

    .line 108
    .local v15, "contest":Landroid/widget/Button;
    if-eqz v15, :cond_6

    .line 112
    const v1, 0x7f080102

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/EditText;

    .line 114
    .local v16, "ipAddress":Landroid/widget/EditText;
    if-eqz v16, :cond_5

    .line 118
    const v1, 0x7f0801b1

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 120
    .local v17, "slogan":Landroid/widget/TextView;
    if-eqz v17, :cond_4

    .line 124
    const v1, 0x7f0801b2

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 126
    .local v18, "slogan2":Landroid/widget/TextView;
    if-eqz v18, :cond_3

    .line 130
    const v1, 0x7f0801f1

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 132
    .local v19, "textView4":Landroid/widget/TextView;
    if-eqz v19, :cond_2

    .line 136
    const v1, 0x7f0801f2

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 138
    .local v20, "textView5":Landroid/widget/TextView;
    if-eqz v20, :cond_1

    .line 142
    const v1, 0x7f0801f3

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 144
    .local v21, "textView6":Landroid/widget/TextView;
    if-eqz v21, :cond_0

    .line 148
    new-instance v22, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v22

    move-object v5, v2

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    invoke-direct/range {v3 .. v13}, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v22

    .line 145
    :cond_0
    goto :goto_0

    .line 139
    .end local v21    # "textView6":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 133
    .end local v20    # "textView5":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 127
    .end local v19    # "textView4":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 121
    .end local v18    # "slogan2":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 115
    .end local v17    # "slogan":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 109
    .end local v16    # "ipAddress":Landroid/widget/EditText;
    :cond_6
    goto :goto_0

    .line 103
    .end local v15    # "contest":Landroid/widget/Button;
    :cond_7
    goto :goto_0

    .line 97
    .end local v14    # "LandLogin":Landroid/widget/Button;
    :cond_8
    nop

    .line 151
    .end local v2    # "BigTitle":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 81
    const v0, 0x7f0b001d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityDisclaimerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
