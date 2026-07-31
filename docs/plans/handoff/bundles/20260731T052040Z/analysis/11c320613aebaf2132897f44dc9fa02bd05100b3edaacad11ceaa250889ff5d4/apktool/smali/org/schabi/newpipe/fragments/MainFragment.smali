.class public Lorg/schabi/newpipe/fragments/MainFragment;
.super Lorg/schabi/newpipe/BaseFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lorg/jsoup/nodes/Printer;

.field public hasTabsChanged:Z

.field public mainTabsPositionBottom:Z

.field public mainTabsPositionKey:Ljava/lang/String;

.field public pagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

.field public prefs:Landroid/content/SharedPreferences;

.field public final tabsList:Ljava/util/ArrayList;

.field public tabsManager:Lcoil3/ComponentRegistry$Builder;

.field public youtubeRestrictedModeEnabled:Z

.field public youtubeRestrictedModeEnabledKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->hasTabsChanged:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final commitPlaylistTabs()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->pagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->localPlaylistFragments:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    const/16 v1, 0xe

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const p2, 0x7f0a021e

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lorg/schabi/newpipe/views/ScrollableTabLayout;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const p2, 0x7f0a02cc

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance p2, Lorg/jsoup/nodes/Printer;

    .line 24
    .line 25
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    invoke-direct {p2, v2, p1, v0, v1}, Lorg/jsoup/nodes/Printer;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 37
    .line 38
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lorg/schabi/newpipe/views/ScrollableTabLayout;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->setupTabs()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTabLayoutPosition()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "Missing required view with ID: "

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

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
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    new-instance v1, Lcoil3/ComponentRegistry$Builder;

    .line 11
    .line 12
    const/16 v2, 0x12

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lcoil3/ComponentRegistry$Builder;-><init>(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsManager:Lcoil3/ComponentRegistry$Builder;

    .line 18
    .line 19
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/16 v2, 0xb

    .line 22
    .line 23
    invoke-direct {v0, p0, v2}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroid/content/SharedPreferences;

    .line 29
    .line 30
    iget-object v3, v1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iput-object v0, v1, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 40
    .line 41
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 42
    .line 43
    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, v1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->prefs:Landroid/content/SharedPreferences;

    .line 60
    .line 61
    const p1, 0x7f130548

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->youtubeRestrictedModeEnabledKey:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->prefs:Landroid/content/SharedPreferences;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->youtubeRestrictedModeEnabled:Z

    .line 78
    .line 79
    const p1, 0x7f1302b2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionKey:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->prefs:Landroid/content/SharedPreferences;

    .line 89
    .line 90
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionBottom:Z

    .line 95
    .line 96
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    const v0, 0x7f0f000a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lokio/Options$Companion;->setDisplayHomeAsUpEnabled(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d0060

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsManager:Lcoil3/ComponentRegistry$Builder;

    .line 5
    .line 6
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, v0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroid/content/SharedPreferences;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 6
    .line 7
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a004a

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Landroidx/sqlite/SQLite;->openSearchFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    const-string v0, "Opening search fragment"

    .line 28
    .line 29
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->prefs:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->youtubeRestrictedModeEnabledKey:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->youtubeRestrictedModeEnabled:Z

    .line 14
    .line 15
    if-ne v1, v0, :cond_0

    .line 16
    .line 17
    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->hasTabsChanged:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    :cond_0
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->youtubeRestrictedModeEnabled:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->setupTabs()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->prefs:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionKey:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionBottom:Z

    .line 35
    .line 36
    if-eq v1, v0, :cond_2

    .line 37
    .line 38
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionBottom:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTabLayoutPosition()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTitleForTab(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTitleForTab(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setupTabs()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsManager:Lcoil3/ComponentRegistry$Builder;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcoil3/ComponentRegistry$Builder;->getTabs()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->pagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v1, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->internalTabsList:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v1, v2, v3, v0}, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->pagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 43
    .line 44
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 53
    .line 54
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 57
    .line 58
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/MainFragment;->pagerAdapter:Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    move v2, v1

    .line 65
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 70
    .line 71
    if-ge v2, v3, :cond_3

    .line 72
    .line 73
    iget-object v3, v4, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, Lorg/schabi/newpipe/views/ScrollableTabLayout;

    .line 76
    .line 77
    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {v3, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iput-object v4, v3, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 111
    .line 112
    .line 113
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, v4, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/MainFragment;->updateTitleForTab(I)V

    .line 125
    .line 126
    .line 127
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/MainFragment;->hasTabsChanged:Z

    .line 128
    .line 129
    return-void
.end method

.method public final updateTabLayoutPosition()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/schabi/newpipe/views/ScrollableTabLayout;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 10
    .line 11
    iget-boolean v2, p0, Lorg/schabi/newpipe/fragments/MainFragment;->mainTabsPositionBottom:Z

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 24
    .line 25
    const/16 v5, 0xc

    .line 26
    .line 27
    const/16 v6, 0xa

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    move v7, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v7, v5

    .line 34
    :goto_0
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 35
    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v5, v6

    .line 41
    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x3

    .line 45
    const/4 v6, 0x2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    move v7, v5

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v7, v6

    .line 51
    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 52
    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    move v5, v6

    .line 57
    :cond_3
    const v7, 0x7f0a021e

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61
    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/4 v6, 0x0

    .line 67
    :goto_3
    invoke-virtual {v1, v6}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    const v3, 0x1010054

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    const v3, 0x7f04012a

    .line 87
    .line 88
    .line 89
    :goto_4
    invoke-static {v0, v3}, Lokio/Options$Companion;->resolveColorFromAttr(Landroid/content/Context;I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    .line 95
    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const v0, 0x1010435

    .line 103
    .line 104
    .line 105
    invoke-static {p0, v0}, Lokio/Options$Companion;->resolveColorFromAttr(Landroid/content/Context;I)I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    goto :goto_5

    .line 110
    :cond_6
    const/4 p0, -0x1

    .line 111
    :goto_5
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/16 v2, 0x20

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final updateTitleForTab(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment;->tabsList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
