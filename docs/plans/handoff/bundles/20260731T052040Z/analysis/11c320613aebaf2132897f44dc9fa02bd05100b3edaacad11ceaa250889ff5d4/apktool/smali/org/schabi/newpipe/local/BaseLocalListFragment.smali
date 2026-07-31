.class public abstract Lorg/schabi/newpipe/local/BaseLocalListFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "N:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "TI;>;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field public itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

.field public itemsList:Landroidx/recyclerview/widget/RecyclerView;

.field public updateFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->updateFlags:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final handleError()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->resetFragment()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/local/BaseLocalListFragment$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/BaseLocalListFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public hideLoading()V
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const-wide/16 v1, 0xc8

    .line 10
    .line 11
    invoke-static {p0, v0, v1, v2}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public initListeners()V
    .locals 0

    .line 1
    return-void
.end method

.method public initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    invoke-direct {p2, v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 12
    .line 13
    const p2, 0x7f0a0206

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->refreshItemViewMode$1()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->getListHeaderSupplier()Ljava/util/function/Supplier;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 p2, 0x0

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 35
    .line 36
    iget-object v1, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 37
    .line 38
    if-eq p1, v1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v1, p2

    .line 43
    :goto_0
    iput-object p1, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->headerSupplier:Ljava/util/function/Supplier;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    const v1, 0x7f0d00d7

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    check-cast p1, Landroid/widget/LinearLayout;

    .line 68
    .line 69
    iget-object p2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 70
    .line 71
    iput-object p1, p2, Lorg/schabi/newpipe/local/LocalItemListAdapter;->footer:Landroid/view/View;

    .line 72
    .line 73
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    const-string p0, "rootView"

    .line 80
    .line 81
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lokio/Options$Companion;->setDisplayShowTitleEnabled(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->updateFlags:I

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x32

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->refreshItemViewMode$1()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->updateFlags:I

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    const p1, 0x7f13024e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->updateFlags:I

    .line 15
    .line 16
    or-int/lit8 p1, p1, 0x32

    .line 17
    .line 18
    iput p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->updateFlags:I

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final refreshItemViewMode$1()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lokio/Options$Companion;->getItemViewMode(Landroid/content/Context;)Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    sget-object v3, Lorg/schabi/newpipe/info_list/ItemViewMode;->GRID:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 14
    .line 15
    if-ne v0, v3, :cond_2

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const v3, 0x7f070394

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .line 35
    const/high16 v5, 0x41c00000    # 24.0f

    .line 36
    .line 37
    mul-float/2addr v4, v5

    .line 38
    add-float/2addr v4, v3

    .line 39
    float-to-int v3, v4

    .line 40
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 45
    .line 46
    div-int v4, v2, v3

    .line 47
    .line 48
    mul-int v5, v3, v4

    .line 49
    .line 50
    sub-int v5, v2, v5

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    if-nez v5, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    xor-int/2addr v2, v3

    .line 57
    shr-int/lit8 v2, v2, 0x1f

    .line 58
    .line 59
    or-int/2addr v2, v6

    .line 60
    if-gez v2, :cond_1

    .line 61
    .line 62
    add-int/lit8 v4, v4, -0x1

    .line 63
    .line 64
    :cond_1
    :goto_0
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 65
    .line 66
    iget-object v3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 67
    .line 68
    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v5, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;

    .line 77
    .line 78
    invoke-direct {v5, v3, v4, v6}, Lorg/schabi/newpipe/info_list/InfoListAdapter$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    .line 79
    .line 80
    .line 81
    iput-object v5, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/core/app/NotificationCompat$Style;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 85
    .line 86
    invoke-direct {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    move-object v2, v3

    .line 90
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 94
    .line 95
    iput-object v0, p0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->itemViewMode:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public resetFragment()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final showEmptyState()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showEmptyState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/local/BaseLocalListFragment$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/BaseLocalListFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public showLoading()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->animateHideRecyclerViewAllowingScrolling(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public startLoading(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->resetFragment()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
