.class public final Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;
.super Ljava/lang/Object;
.source "FragmentHomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final creditsAmount:Landroid/widget/TextView;

.field public final games:Landroid/widget/TextView;

.field public final gamesAmount:Landroid/widget/TextView;

.field public final idRVProductsOwned:Landroidx/recyclerview/widget/RecyclerView;

.field public final imageView:Landroid/widget/ImageView;

.field public final imageView2:Landroid/widget/ImageView;

.field public final materialCardView:Lcom/google/android/material/card/MaterialCardView;

.field public final materialCardView2:Lcom/google/android/material/card/MaterialCardView;

.field public final paymentDesc:Landroid/widget/TextView;

.field public final relativeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textView9:Landroid/widget/TextView;

.field public final title2Home:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "creditsAmount"    # Landroid/widget/TextView;
    .param p3, "games"    # Landroid/widget/TextView;
    .param p4, "gamesAmount"    # Landroid/widget/TextView;
    .param p5, "idRVProductsOwned"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p6, "imageView"    # Landroid/widget/ImageView;
    .param p7, "imageView2"    # Landroid/widget/ImageView;
    .param p8, "materialCardView"    # Lcom/google/android/material/card/MaterialCardView;
    .param p9, "materialCardView2"    # Lcom/google/android/material/card/MaterialCardView;
    .param p10, "paymentDesc"    # Landroid/widget/TextView;
    .param p11, "relativeLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p12, "textView9"    # Landroid/widget/TextView;
    .param p13, "title2Home"    # Landroid/widget/TextView;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->rootView:Landroid/widget/LinearLayout;

    .line 70
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->creditsAmount:Landroid/widget/TextView;

    .line 71
    iput-object p3, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->games:Landroid/widget/TextView;

    .line 72
    iput-object p4, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->gamesAmount:Landroid/widget/TextView;

    .line 73
    iput-object p5, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->idRVProductsOwned:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    iput-object p6, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->imageView:Landroid/widget/ImageView;

    .line 75
    iput-object p7, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->imageView2:Landroid/widget/ImageView;

    .line 76
    iput-object p8, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    .line 77
    iput-object p9, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->materialCardView2:Lcom/google/android/material/card/MaterialCardView;

    .line 78
    iput-object p10, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->paymentDesc:Landroid/widget/TextView;

    .line 79
    iput-object p11, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->relativeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    iput-object p12, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->textView9:Landroid/widget/TextView;

    .line 81
    iput-object p13, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->title2Home:Landroid/widget/TextView;

    .line 82
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;
    .locals 29
    .param p0, "rootView"    # Landroid/view/View;

    .line 111
    move-object/from16 v0, p0

    const v1, 0x7f08009a

    .line 112
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    .local v2, "creditsAmount":Landroid/widget/TextView;
    if-eqz v2, :cond_b

    .line 117
    const v1, 0x7f0800db

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 119
    .local v17, "games":Landroid/widget/TextView;
    if-eqz v17, :cond_a

    .line 123
    const v1, 0x7f0800dc

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 125
    .local v18, "gamesAmount":Landroid/widget/TextView;
    if-eqz v18, :cond_9

    .line 129
    const v1, 0x7f0800f1

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    .local v19, "idRVProductsOwned":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v19, :cond_8

    .line 135
    const v1, 0x7f0800fa

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/ImageView;

    .line 137
    .local v20, "imageView":Landroid/widget/ImageView;
    if-eqz v20, :cond_7

    .line 141
    const v1, 0x7f0800fb

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/ImageView;

    .line 143
    .local v21, "imageView2":Landroid/widget/ImageView;
    if-eqz v21, :cond_6

    .line 147
    const v1, 0x7f080118

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/google/android/material/card/MaterialCardView;

    .line 149
    .local v22, "materialCardView":Lcom/google/android/material/card/MaterialCardView;
    if-eqz v22, :cond_5

    .line 153
    const v1, 0x7f080119

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Lcom/google/android/material/card/MaterialCardView;

    .line 155
    .local v23, "materialCardView2":Lcom/google/android/material/card/MaterialCardView;
    if-eqz v23, :cond_4

    .line 159
    const v1, 0x7f08017a

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/TextView;

    .line 161
    .local v24, "paymentDesc":Landroid/widget/TextView;
    if-eqz v24, :cond_3

    .line 165
    const v1, 0x7f080187

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 167
    .local v25, "relativeLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    if-eqz v25, :cond_2

    .line 171
    const v1, 0x7f0801f6

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/TextView;

    .line 173
    .local v26, "textView9":Landroid/widget/TextView;
    if-eqz v26, :cond_1

    .line 177
    const v1, 0x7f080205

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/TextView;

    .line 179
    .local v27, "title2Home":Landroid/widget/TextView;
    if-eqz v27, :cond_0

    .line 183
    new-instance v28, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v28

    move-object v5, v2

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    invoke-direct/range {v3 .. v16}, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v28

    .line 180
    :cond_0
    goto :goto_0

    .line 174
    .end local v27    # "title2Home":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 168
    .end local v26    # "textView9":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 162
    .end local v25    # "relativeLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    :cond_3
    goto :goto_0

    .line 156
    .end local v24    # "paymentDesc":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 150
    .end local v23    # "materialCardView2":Lcom/google/android/material/card/MaterialCardView;
    :cond_5
    goto :goto_0

    .line 144
    .end local v22    # "materialCardView":Lcom/google/android/material/card/MaterialCardView;
    :cond_6
    goto :goto_0

    .line 138
    .end local v21    # "imageView2":Landroid/widget/ImageView;
    :cond_7
    goto :goto_0

    .line 132
    .end local v20    # "imageView":Landroid/widget/ImageView;
    :cond_8
    goto :goto_0

    .line 126
    .end local v19    # "idRVProductsOwned":Landroidx/recyclerview/widget/RecyclerView;
    :cond_9
    goto :goto_0

    .line 120
    .end local v18    # "gamesAmount":Landroid/widget/TextView;
    :cond_a
    goto :goto_0

    .line 114
    .end local v17    # "games":Landroid/widget/TextView;
    :cond_b
    nop

    .line 187
    .end local v2    # "creditsAmount":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 98
    const v0, 0x7f0b0037

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/databinding/FragmentHomeBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
