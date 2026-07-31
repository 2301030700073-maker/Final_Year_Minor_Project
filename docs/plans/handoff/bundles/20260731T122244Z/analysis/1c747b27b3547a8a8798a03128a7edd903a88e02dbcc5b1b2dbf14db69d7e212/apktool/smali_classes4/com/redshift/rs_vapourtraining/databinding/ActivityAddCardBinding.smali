.class public final Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;
.super Ljava/lang/Object;
.source "ActivityAddCardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addCardCvv:Landroid/widget/EditText;

.field public final addCardName:Landroid/widget/EditText;

.field public final addCardNumber:Landroid/widget/EditText;

.field public final button:Landroid/widget/Button;

.field public final cardTitle:Landroid/widget/TextView;

.field public final expMonth:Landroid/widget/EditText;

.field public final expYear:Landroid/widget/EditText;

.field public final imageView3:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final slogan3:Landroid/widget/TextView;

.field public final slogan4:Landroid/widget/TextView;

.field public final slogan5:Landroid/widget/TextView;

.field public final slogan6:Landroid/widget/TextView;

.field public final textView7:Landroid/widget/TextView;

.field public final textView8:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "addCardCvv"    # Landroid/widget/EditText;
    .param p3, "addCardName"    # Landroid/widget/EditText;
    .param p4, "addCardNumber"    # Landroid/widget/EditText;
    .param p5, "button"    # Landroid/widget/Button;
    .param p6, "cardTitle"    # Landroid/widget/TextView;
    .param p7, "expMonth"    # Landroid/widget/EditText;
    .param p8, "expYear"    # Landroid/widget/EditText;
    .param p9, "imageView3"    # Landroid/widget/ImageView;
    .param p10, "slogan3"    # Landroid/widget/TextView;
    .param p11, "slogan4"    # Landroid/widget/TextView;
    .param p12, "slogan5"    # Landroid/widget/TextView;
    .param p13, "slogan6"    # Landroid/widget/TextView;
    .param p14, "textView7"    # Landroid/widget/TextView;
    .param p15, "textView8"    # Landroid/widget/TextView;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    iput-object p2, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->addCardCvv:Landroid/widget/EditText;

    .line 75
    iput-object p3, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->addCardName:Landroid/widget/EditText;

    .line 76
    iput-object p4, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->addCardNumber:Landroid/widget/EditText;

    .line 77
    iput-object p5, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->button:Landroid/widget/Button;

    .line 78
    iput-object p6, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->cardTitle:Landroid/widget/TextView;

    .line 79
    iput-object p7, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->expMonth:Landroid/widget/EditText;

    .line 80
    iput-object p8, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->expYear:Landroid/widget/EditText;

    .line 81
    iput-object p9, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->imageView3:Landroid/widget/ImageView;

    .line 82
    iput-object p10, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->slogan3:Landroid/widget/TextView;

    .line 83
    iput-object p11, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->slogan4:Landroid/widget/TextView;

    .line 84
    iput-object p12, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->slogan5:Landroid/widget/TextView;

    .line 85
    iput-object p13, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->slogan6:Landroid/widget/TextView;

    .line 86
    iput-object p14, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->textView7:Landroid/widget/TextView;

    .line 87
    iput-object p15, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->textView8:Landroid/widget/TextView;

    .line 88
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;
    .locals 33
    .param p0, "rootView"    # Landroid/view/View;

    .line 117
    move-object/from16 v0, p0

    const v1, 0x7f08004d

    .line 118
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 119
    .local v2, "addCardCvv":Landroid/widget/EditText;
    if-eqz v2, :cond_d

    .line 123
    const v1, 0x7f08004e

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/EditText;

    .line 125
    .local v19, "addCardName":Landroid/widget/EditText;
    if-eqz v19, :cond_c

    .line 129
    const v1, 0x7f08004f

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/EditText;

    .line 131
    .local v20, "addCardNumber":Landroid/widget/EditText;
    if-eqz v20, :cond_b

    .line 135
    const v1, 0x7f08006d

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/Button;

    .line 137
    .local v21, "button":Landroid/widget/Button;
    if-eqz v21, :cond_a

    .line 141
    const v1, 0x7f080073

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 143
    .local v22, "cardTitle":Landroid/widget/TextView;
    if-eqz v22, :cond_9

    .line 147
    const v1, 0x7f0800ca

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/EditText;

    .line 149
    .local v23, "expMonth":Landroid/widget/EditText;
    if-eqz v23, :cond_8

    .line 153
    const v1, 0x7f0800cb

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/EditText;

    .line 155
    .local v24, "expYear":Landroid/widget/EditText;
    if-eqz v24, :cond_7

    .line 159
    const v1, 0x7f0800fc

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/ImageView;

    .line 161
    .local v25, "imageView3":Landroid/widget/ImageView;
    if-eqz v25, :cond_6

    .line 165
    const v1, 0x7f0801b3

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/TextView;

    .line 167
    .local v26, "slogan3":Landroid/widget/TextView;
    if-eqz v26, :cond_5

    .line 171
    const v1, 0x7f0801b4

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/TextView;

    .line 173
    .local v27, "slogan4":Landroid/widget/TextView;
    if-eqz v27, :cond_4

    .line 177
    const v1, 0x7f0801b5

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/TextView;

    .line 179
    .local v28, "slogan5":Landroid/widget/TextView;
    if-eqz v28, :cond_3

    .line 183
    const v1, 0x7f0801b6

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/TextView;

    .line 185
    .local v29, "slogan6":Landroid/widget/TextView;
    if-eqz v29, :cond_2

    .line 189
    const v1, 0x7f0801f4

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/TextView;

    .line 191
    .local v30, "textView7":Landroid/widget/TextView;
    if-eqz v30, :cond_1

    .line 195
    const v1, 0x7f0801f5

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/TextView;

    .line 197
    .local v31, "textView8":Landroid/widget/TextView;
    if-eqz v31, :cond_0

    .line 201
    new-instance v32, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v32

    move-object v5, v2

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    move-object/from16 v17, v30

    move-object/from16 v18, v31

    invoke-direct/range {v3 .. v18}, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v32

    .line 198
    :cond_0
    goto :goto_0

    .line 192
    .end local v31    # "textView8":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 186
    .end local v30    # "textView7":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 180
    .end local v29    # "slogan6":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 174
    .end local v28    # "slogan5":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 168
    .end local v27    # "slogan4":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 162
    .end local v26    # "slogan3":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 156
    .end local v25    # "imageView3":Landroid/widget/ImageView;
    :cond_7
    goto :goto_0

    .line 150
    .end local v24    # "expYear":Landroid/widget/EditText;
    :cond_8
    goto :goto_0

    .line 144
    .end local v23    # "expMonth":Landroid/widget/EditText;
    :cond_9
    goto :goto_0

    .line 138
    .end local v22    # "cardTitle":Landroid/widget/TextView;
    :cond_a
    goto :goto_0

    .line 132
    .end local v21    # "button":Landroid/widget/Button;
    :cond_b
    goto :goto_0

    .line 126
    .end local v20    # "addCardNumber":Landroid/widget/EditText;
    :cond_c
    goto :goto_0

    .line 120
    .end local v19    # "addCardName":Landroid/widget/EditText;
    :cond_d
    nop

    .line 205
    .end local v2    # "addCardCvv":Landroid/widget/EditText;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 104
    const v0, 0x7f0b001c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-static {v0}, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->bind(Landroid/view/View;)Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/databinding/ActivityAddCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
