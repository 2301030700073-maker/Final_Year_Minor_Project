.class public Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;
.super Landroidx/fragment/app/Fragment;
.source "AddCardsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field addCard:Landroid/widget/Button;

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

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/redshift/rs_vapourtraining/AddCard;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->startActivity(Landroid/content/Intent;)V

    .line 73
    nop

    .line 77
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f08004c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    const v0, 0x7f0b0034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 45
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "userRS"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "userID":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->cardModalArrayList:Ljava/util/ArrayList;

    .line 48
    new-instance v4, Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/redshift/rs_vapourtraining/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    .line 50
    invoke-virtual {v4, v3}, Lcom/redshift/rs_vapourtraining/DBHandler;->getCard(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->cardModalArrayList:Ljava/util/ArrayList;

    .line 51
    if-eqz v4, :cond_0

    .line 53
    new-instance v4, Lcom/redshift/rs_vapourtraining/CardAdaptor;

    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->cardModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/redshift/rs_vapourtraining/CardAdaptor;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->cardRVAdapter:Lcom/redshift/rs_vapourtraining/CardAdaptor;

    .line 54
    const v4, 0x7f0800ef

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->cardRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object v1, v4

    .line 57
    .local v1, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->cardRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    iget-object v4, p0, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->cardRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->cardRVAdapter:Lcom/redshift/rs_vapourtraining/CardAdaptor;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    .end local v1    # "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/redshift/rs_vapourtraining/ui/AddCards/AddCardsFragment;->addCard:Landroid/widget/Button;

    .line 63
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-object v0
.end method
