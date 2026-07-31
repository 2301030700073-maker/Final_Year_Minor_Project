.class public Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "HomeFragment.java"


# instance fields
.field cText:Landroid/widget/TextView;

.field private dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

.field gText:Landroid/widget/TextView;

.field private productModalArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/redshift/rs_vapourtraining/ProductModal;",
            ">;"
        }
    .end annotation
.end field

.field private productRV:Landroidx/recyclerview/widget/RecyclerView;

.field private productRVAdapter:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

.field tText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    const v0, 0x7f0b0037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 53
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "userRS"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "userID":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->productModalArrayList:Ljava/util/ArrayList;

    .line 56
    new-instance v4, Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/redshift/rs_vapourtraining/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    .line 57
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->updateCreds()V

    .line 58
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v4, v3}, Lcom/redshift/rs_vapourtraining/DBHandler;->getOwnedGames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->productModalArrayList:Ljava/util/ArrayList;

    .line 59
    if-eqz v4, :cond_0

    .line 60
    new-instance v4, Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->productModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/redshift/rs_vapourtraining/ProductAdaptor;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->productRVAdapter:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    .line 61
    const v4, 0x7f0800f1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->productRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 64
    .local v4, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->productRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->productRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->productRVAdapter:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    .end local v4    # "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const v4, 0x7f08009a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->cText:Landroid/widget/TextView;

    .line 68
    const v4, 0x7f0800dc

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->gText:Landroid/widget/TextView;

    .line 69
    const v4, 0x7f080205

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->tText:Landroid/widget/TextView;

    .line 71
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->cText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v5, v3}, Lcom/redshift/rs_vapourtraining/DBHandler;->getCreds(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->tText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v5, v3}, Lcom/redshift/rs_vapourtraining/DBHandler;->checkUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :try_start_0
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->gText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->productModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->gText:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public updateCreds()V
    .locals 8

    .line 83
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "userbuyCredits"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "boughtCreds":Ljava/lang/String;
    const-string v4, "userRS"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "userID":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 87
    .local v4, "requestedcreds":I
    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {v5, v2}, Lcom/redshift/rs_vapourtraining/DBHandler;->getCreds(Ljava/lang/String;)I

    move-result v5

    .line 88
    .local v5, "mycreds":I
    iget-object v6, p0, Lcom/redshift/rs_vapourtraining/ui/home/HomeFragment;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    add-int v7, v5, v4

    invoke-virtual {v6, v2, v7}, Lcom/redshift/rs_vapourtraining/DBHandler;->updateCredits(Ljava/lang/String;I)V

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 90
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "0"

    invoke-interface {v6, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method
