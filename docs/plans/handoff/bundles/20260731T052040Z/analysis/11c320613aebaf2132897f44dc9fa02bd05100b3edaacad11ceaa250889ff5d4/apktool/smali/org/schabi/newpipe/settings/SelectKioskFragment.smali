.class public Lorg/schabi/newpipe/settings/SelectKioskFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

.field public selectKioskAdapter:Lcom/nononsenseapps/filepicker/FileItemAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->selectKioskAdapter:Lcom/nononsenseapps/filepicker/FileItemAdapter;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lokio/Options$Companion;->isLightThemeSelected(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const p1, 0x7f140178

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const p1, 0x7f140145

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p3, 0x7f0d00f7

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a0206

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    new-instance p3, Lcom/nononsenseapps/filepicker/FileItemAdapter;

    .line 31
    .line 32
    invoke-direct {p3, p0}, Lcom/nononsenseapps/filepicker/FileItemAdapter;-><init>(Lorg/schabi/newpipe/settings/SelectKioskFragment;)V

    .line 33
    .line 34
    .line 35
    iput-object p3, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->selectKioskAdapter:Lcom/nononsenseapps/filepicker/FileItemAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p3

    .line 39
    const-string v0, "Selecting kiosk"

    .line 40
    .line 41
    invoke-static {p0, v0, p3}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->selectKioskAdapter:Lcom/nononsenseapps/filepicker/FileItemAdapter;

    .line 45
    .line 46
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method
