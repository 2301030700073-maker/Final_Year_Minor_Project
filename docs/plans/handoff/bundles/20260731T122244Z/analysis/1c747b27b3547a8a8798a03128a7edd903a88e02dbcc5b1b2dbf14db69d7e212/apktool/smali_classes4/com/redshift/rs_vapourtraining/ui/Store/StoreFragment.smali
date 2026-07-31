.class public Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;
.super Landroidx/fragment/app/Fragment;
.source "StoreFragment.java"


# instance fields
.field private dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;)Lcom/redshift/rs_vapourtraining/DBHandler;
    .locals 1
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;

    .line 33
    iget-object v0, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->writeToFile(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private writeToFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 97
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "gamesbought.txt"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 98
    .local v0, "outputStreamWriter":Ljava/io/OutputStreamWriter;
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File write failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    const v0, 0x7f0b0038

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "root":Landroid/view/View;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->productModalArrayList:Ljava/util/ArrayList;

    .line 47
    new-instance v2, Lcom/redshift/rs_vapourtraining/DBHandler;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/redshift/rs_vapourtraining/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->dbHandler:Lcom/redshift/rs_vapourtraining/DBHandler;

    .line 49
    invoke-virtual {v2}, Lcom/redshift/rs_vapourtraining/DBHandler;->readProducts()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->productModalArrayList:Ljava/util/ArrayList;

    .line 50
    new-instance v2, Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->productModalArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/redshift/rs_vapourtraining/ProductAdaptor;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->productRVAdapter:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    .line 52
    const v2, 0x7f0800f0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->productRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object v1, v2

    .line 55
    .local v1, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->productRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object v2, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->productRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->productRVAdapter:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object v2, p0, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;->productRVAdapter:Lcom/redshift/rs_vapourtraining/ProductAdaptor;

    new-instance v3, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;

    invoke-direct {v3, p0}, Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment$1;-><init>(Lcom/redshift/rs_vapourtraining/ui/Store/StoreFragment;)V

    invoke-virtual {v2, v3}, Lcom/redshift/rs_vapourtraining/ProductAdaptor;->setWhenClickListener(Lcom/redshift/rs_vapourtraining/ProductAdaptor$OnItemsClickListener;)V

    .line 92
    return-object v0
.end method
