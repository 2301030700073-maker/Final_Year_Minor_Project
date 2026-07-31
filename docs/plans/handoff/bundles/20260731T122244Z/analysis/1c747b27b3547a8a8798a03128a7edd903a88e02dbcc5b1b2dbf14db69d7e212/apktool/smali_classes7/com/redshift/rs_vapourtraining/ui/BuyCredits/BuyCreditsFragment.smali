.class public Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;
.super Landroidx/fragment/app/Fragment;
.source "BuyCreditsFragment.java"


# instance fields
.field buycredit:Landroid/widget/Button;

.field private cardModalArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/redshift/rs_vapourtraining/CardModal;",
            ">;"
        }
    .end annotation
.end field

.field private cardRV:Landroidx/recyclerview/widget/RecyclerView;

.field private cardRVAdapter:Lcom/redshift/rs_vapourtraining/CardAdaptor;

.field private dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;


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

    .line 50
    const v0, 0x7f0b0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 52
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "userRS"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "userID":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->cardModalArrayList:Ljava/util/ArrayList;

    .line 56
    new-instance v4, Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/redshift/rs_vapourtraining/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    .line 58
    invoke-virtual {v4, v3}, Lcom/redshift/rs_vapourtraining/DBHandler;->getCard(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->cardModalArrayList:Ljava/util/ArrayList;

    .line 59
    if-eqz v4, :cond_0

    .line 60
    new-instance v4, Lcom/redshift/rs_vapourtraining/CardAdaptor;

    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->cardModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/redshift/rs_vapourtraining/CardAdaptor;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->cardRVAdapter:Lcom/redshift/rs_vapourtraining/CardAdaptor;

    .line 61
    const v4, 0x7f0800ef

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->cardRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object v1, v4

    .line 64
    .local v1, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->cardRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->cardRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->cardRVAdapter:Lcom/redshift/rs_vapourtraining/CardAdaptor;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;->cardRVAdapter:Lcom/redshift/rs_vapourtraining/CardAdaptor;

    new-instance v5, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment$1;

    invoke-direct {v5, p0}, Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment$1;-><init>(Lcom/redshift/rs_vapourtraining/ui/BuyCredits/BuyCreditsFragment;)V

    invoke-virtual {v4, v5}, Lcom/redshift/rs_vapourtraining/CardAdaptor;->setWhenClickListener(Lcom/redshift/rs_vapourtraining/CardAdaptor$OnItemsClickListener;)V

    .line 78
    .end local v1    # "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    return-object v0
.end method
