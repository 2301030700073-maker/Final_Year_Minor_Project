.class public final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/MenuProvider;
.implements Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u0006\u0006\u0007\u0008B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/core/view/MenuProvider;",
        "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;",
        "<init>",
        "()V",
        "OnToSpinnerItemSelectedListener",
        "ViewPagerAdapter",
        "ViewPagerListener",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

.field public final app:Lorg/wikipedia/WikipediaApp;

.field public resettingViewPager:Z

.field public swappingLanguageSpinners:Z

.field public final viewModel$delegate:Lokhttp3/Request$Builder;

.field public final viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    new-instance v2, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 23
    .line 24
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 31
    .line 32
    const/16 v3, 0xc

    .line 33
    .line 34
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 38
    .line 39
    const/16 v4, 0xd

    .line 40
    .line 41
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 45
    .line 46
    const/16 v5, 0x10

    .line 47
    .line 48
    invoke-direct {v4, p0, v0, v5}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lokhttp3/Request$Builder;

    .line 52
    .line 53
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 57
    .line 58
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    .line 64
    .line 65
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 66
    .line 67
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final getLangCode()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langFromCode:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getSinglePage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getTopTitle()Lorg/wikipedia/page/PageTitle;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 10
    .line 11
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 12
    .line 13
    if-eq v1, v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 20
    .line 21
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 22
    .line 23
    if-ne p0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, p0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 39
    .line 40
    :cond_1
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget-object p0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 43
    .line 44
    if-eqz p0, :cond_4

    .line 45
    .line 46
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object p0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v1, p0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 62
    .line 63
    :cond_3
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-object p0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 66
    .line 67
    if-eqz p0, :cond_4

    .line 68
    .line 69
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_4
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public final getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final nextPage(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    .line 29
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x1

    .line 43
    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateActionButton()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x37

    .line 5
    .line 6
    if-ne p1, v0, :cond_6

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_6

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    const-string v0, "addedContribution"

    .line 21
    .line 22
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p3, p2

    .line 28
    :goto_0
    invoke-virtual {p1, p3}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->showAddedContributionView(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object p1, p2

    .line 45
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    iget-object p3, p3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 50
    .line 51
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    aget p3, v0, p3

    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    if-eq p3, v0, :cond_5

    .line 61
    .line 62
    const/4 v0, 0x3

    .line 63
    const/4 v1, 0x0

    .line 64
    const/4 v2, 0x1

    .line 65
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 66
    .line 67
    if-eq p3, v0, :cond_4

    .line 68
    .line 69
    const/4 v0, 0x6

    .line 70
    if-eq p3, v0, :cond_3

    .line 71
    .line 72
    const p1, 0x7f120122

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {p3, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-array p3, v2, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object p1, p3, v1

    .line 91
    .line 92
    const p1, 0x7f120121

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-virtual {p3, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    new-array p3, v2, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object p1, p3, v1

    .line 111
    .line 112
    const p1, 0x7f12011e

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    const p1, 0x7f12011f

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->nextPage(Landroidx/fragment/app/Fragment;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    return-void
.end method

.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 12
    .line 13
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->IMAGE_RECOMMENDATIONS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 22
    .line 23
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->VANDALISM_PATROL:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 24
    .line 25
    if-ne p0, v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const p0, 0x7f0e0022

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const p3, 0x7f0c01ab

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p2, 0x7f09004f

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    move-object v2, p3

    .line 24
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 25
    .line 26
    if-eqz v2, :cond_6

    .line 27
    .line 28
    const p2, 0x7f090053

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    const p2, 0x7f090070

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    move-object v3, p3

    .line 45
    check-cast v3, Landroid/widget/ImageView;

    .line 46
    .line 47
    if-eqz v3, :cond_6

    .line 48
    .line 49
    const p2, 0x7f090090

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    move-object v4, p3

    .line 57
    check-cast v4, Landroid/widget/ImageView;

    .line 58
    .line 59
    if-eqz v4, :cond_6

    .line 60
    .line 61
    const p2, 0x7f0900a4

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    move-object v5, p3

    .line 69
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    .line 71
    if-eqz v5, :cond_6

    .line 72
    .line 73
    const p2, 0x7f0900d2

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    move-object v6, p3

    .line 81
    check-cast v6, Landroidx/viewpager2/widget/ViewPager2;

    .line 82
    .line 83
    if-eqz v6, :cond_6

    .line 84
    .line 85
    const p2, 0x7f090456

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    move-object v7, p3

    .line 93
    check-cast v7, Landroid/widget/ImageView;

    .line 94
    .line 95
    if-eqz v7, :cond_6

    .line 96
    .line 97
    const p2, 0x7f09063b

    .line 98
    .line 99
    .line 100
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 105
    .line 106
    if-eqz p3, :cond_6

    .line 107
    .line 108
    const p2, 0x7f0906cb

    .line 109
    .line 110
    .line 111
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    move-object v8, p3

    .line 116
    check-cast v8, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 117
    .line 118
    if-eqz v8, :cond_6

    .line 119
    .line 120
    const p2, 0x7f090771

    .line 121
    .line 122
    .line 123
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    move-object v9, p3

    .line 128
    check-cast v9, Landroid/widget/Spinner;

    .line 129
    .line 130
    if-eqz v9, :cond_6

    .line 131
    .line 132
    const p2, 0x7f090772

    .line 133
    .line 134
    .line 135
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    move-object v10, p3

    .line 140
    check-cast v10, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    if-eqz v10, :cond_6

    .line 143
    .line 144
    const p2, 0x7f090773

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    move-object v11, p3

    .line 152
    check-cast v11, Landroid/widget/Spinner;

    .line 153
    .line 154
    if-eqz v11, :cond_6

    .line 155
    .line 156
    new-instance v0, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 157
    .line 158
    move-object v1, p1

    .line 159
    check-cast v1, Landroid/widget/FrameLayout;

    .line 160
    .line 161
    invoke-direct/range {v0 .. v11}, Lorg/wikipedia/databinding/ActivityLoginBinding;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/ImageView;Lcom/google/android/material/appbar/MaterialToolbar;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/Spinner;)V

    .line 162
    .line 163
    .line 164
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 165
    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityLoginBinding;->toolbar:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    const/4 p3, 0x1

    .line 187
    if-eqz p2, :cond_0

    .line 188
    .line 189
    invoke-virtual {p2, p3}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 190
    .line 191
    .line 192
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    if-eqz p2, :cond_5

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const-string v0, "intentAction"

    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 212
    .line 213
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    aget p1, v0, p1

    .line 220
    .line 221
    if-eq p1, p3, :cond_4

    .line 222
    .line 223
    const/4 p3, 0x2

    .line 224
    if-eq p1, p3, :cond_3

    .line 225
    .line 226
    const/4 p3, 0x3

    .line 227
    if-eq p1, p3, :cond_3

    .line 228
    .line 229
    const/4 p3, 0x4

    .line 230
    if-eq p1, p3, :cond_2

    .line 231
    .line 232
    const/4 p3, 0x5

    .line 233
    if-eq p1, p3, :cond_1

    .line 234
    .line 235
    const p1, 0x7f12089c

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_1
    const p1, 0x7f1208a6

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_2
    const-string p1, ""

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_3
    const p1, 0x7f12088b

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_4
    const p1, 0x7f120905

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    :goto_0
    invoke-virtual {p2, p1}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    :cond_5
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 285
    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast p0, Landroid/widget/FrameLayout;

    .line 292
    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    return-object p0

    .line 297
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    const-string p1, "Missing required view with ID: "

    .line 306
    .line 307
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const/4 p0, 0x0

    .line 315
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/main/MainFragment$PageChangeCallback;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 38
    .line 39
    return-void
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f0903b6

    .line 9
    .line 10
    .line 11
    if-ne p1, v0, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 18
    .line 19
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    aget p1, v0, p1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const v1, 0x7f1208d7

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 60
    .line 61
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 62
    .line 63
    const-string v2, "en"

    .line 64
    .line 65
    if-ne p1, v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langFromCode:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 84
    .line 85
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 86
    .line 87
    if-ne p1, v1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langToCode:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const v1, 0x7f12086b

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const v1, 0x7f12007e

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {p1, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 148
    .line 149
    .line 150
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    .line 151
    .line 152
    .line 153
    return v0

    .line 154
    :cond_4
    const/4 p0, 0x0

    .line 155
    return p0
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSelectPage()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 6
    .line 7
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 16
    .line 17
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->VANDALISM_PATROL:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->publish()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 42
    .line 43
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->IMAGE_RECOMMENDATIONS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 44
    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_5

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->publish()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getTopTitle()Lorg/wikipedia/page/PageTitle;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    sget v0, Lorg/wikipedia/descriptions/DescriptionEditActivity;->$r8$clinit:I

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getTopTitle()Lorg/wikipedia/page/PageTitle;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v7, 0x0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->sourceSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 84
    .line 85
    move-object v3, v0

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move-object v3, v7

    .line 88
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->targetSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 95
    .line 96
    move-object v4, v0

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    move-object v4, v7

    .line 99
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v5, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 104
    .line 105
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 106
    .line 107
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/util/UriUtil;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const/16 v1, 0x37

    .line 112
    .line 113
    invoke-virtual {p0, v0, v1, v7}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 13
    .line 14
    invoke-virtual {p1, p0, p2, v0}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 27
    .line 28
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const/4 v0, 0x0

    .line 43
    const/4 v1, 0x1

    .line 44
    if-le p2, v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p2, p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 51
    .line 52
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 53
    .line 54
    if-eq p2, v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iget-object p2, p2, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 61
    .line 62
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 63
    .line 64
    if-ne p2, v2, :cond_1

    .line 65
    .line 66
    :cond_0
    move p2, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/16 p2, 0x8

    .line 69
    .line 70
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 81
    .line 82
    const/4 p2, 0x2

    .line 83
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 94
    .line 95
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resetViewPagerItemAdapter()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 108
    .line 109
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->IMAGE_RECOMMENDATIONS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 110
    .line 111
    if-ne p1, v2, :cond_2

    .line 112
    .line 113
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 123
    .line 124
    .line 125
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p1, Landroid/widget/ImageView;

    .line 133
    .line 134
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    invoke-direct {v3, p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p1, Landroid/widget/ImageView;

    .line 150
    .line 151
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;

    .line 152
    .line 153
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$3;

    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    invoke-direct {v1, p0, v3, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$onViewCreated$3;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 167
    .line 168
    .line 169
    const/4 v4, 0x3

    .line 170
    invoke-static {p1, v3, v3, v1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateBackButton(I)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 184
    .line 185
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;

    .line 186
    .line 187
    invoke-direct {v1, p0, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateActionButton()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 201
    .line 202
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 203
    .line 204
    if-ne p1, p2, :cond_3

    .line 205
    .line 206
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 207
    .line 208
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShowImageTagsOnboarding()Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_3

    .line 213
    .line 214
    const p1, 0x7f120611

    .line 215
    .line 216
    .line 217
    invoke-static {p1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 218
    .line 219
    .line 220
    sget p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;->$r8$clinit:I

    .line 221
    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    new-instance p2, Landroid/content/Intent;

    .line 227
    .line 228
    const-class v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;

    .line 229
    .line 230
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, p2, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 242
    .line 243
    if-ne p1, v2, :cond_4

    .line 244
    .line 245
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 246
    .line 247
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsImageRecsOnboardingShown()Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-nez p1, :cond_4

    .line 252
    .line 253
    sget p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsOnboardingActivity;->$r8$clinit:I

    .line 254
    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    new-instance p2, Landroid/content/Intent;

    .line 260
    .line 261
    const-class v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsOnboardingActivity;

    .line 262
    .line 263
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, p2, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 267
    .line 268
    .line 269
    :cond_4
    return-void
.end method

.method public final resetViewPagerItemAdapter()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resettingViewPager:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resettingViewPager:Z

    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    .line 17
    new-instance v1, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 18
    .line 19
    const/16 v2, 0xf

    .line 20
    .line 21
    invoke-direct {v1, v2, p0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v2, 0xfa

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final swapLanguageSpinnerSelection(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swappingLanguageSpinners:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swappingLanguageSpinners:Z

    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langFromCode:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langToCode:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    check-cast v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object p1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Landroid/widget/Spinner;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object p1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Landroid/widget/Spinner;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 58
    .line 59
    .line 60
    :goto_1
    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swappingLanguageSpinners:Z

    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public final topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {v0, p0}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    .line 38
    .line 39
    return-object p0
.end method

.method public final topChild()Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {v0, p0}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 38
    .line 39
    return-object p0
.end method

.method public final updateActionButton()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    instance-of v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 15
    .line 16
    iget-object v4, v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v1

    .line 26
    :goto_0
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object v4, v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->addedContribution:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;->showAddedContributionView(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    const v4, 0x7f08010e

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const v4, 0x7f0801a4

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 62
    .line 63
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->publishEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->publishEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    .line 89
    .line 90
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 101
    .line 102
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-object v3, v3, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 107
    .line 108
    sget-object v4, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->IMAGE_RECOMMENDATIONS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 109
    .line 110
    const/16 v5, 0x8

    .line 111
    .line 112
    if-eq v3, v4, :cond_5

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    move v1, v5

    .line 116
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 124
    .line 125
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->VANDALISM_PATROL:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 126
    .line 127
    if-ne v0, v1, :cond_6

    .line 128
    .line 129
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 137
    .line 138
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_6
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 147
    .line 148
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 149
    .line 150
    if-ne v0, v1, :cond_8

    .line 151
    .line 152
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "landscape"

    .line 166
    .line 167
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 172
    .line 173
    const/4 v2, 0x0

    .line 174
    if-eqz v0, :cond_7

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    iget-object v0, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 194
    .line 195
    const v0, 0x7f080139

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    iget-object v0, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 208
    .line 209
    const v1, 0x7f120118

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 220
    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 227
    .line 228
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_8
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 237
    .line 238
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 239
    .line 240
    if-eq v0, v1, :cond_e

    .line 241
    .line 242
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 247
    .line 248
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 249
    .line 250
    if-ne v0, v1, :cond_9

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_9
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 261
    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const-string v1, "portrait"

    .line 267
    .line 268
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_d

    .line 273
    .line 274
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 279
    .line 280
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 281
    .line 282
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 283
    .line 284
    if-ne v0, v1, :cond_b

    .line 285
    .line 286
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    iget-object v0, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 292
    .line 293
    if-eqz v2, :cond_a

    .line 294
    .line 295
    const v1, 0x7f120881

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_a
    const v1, 0x7f1208a3

    .line 300
    .line 301
    .line 302
    :goto_4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    iget-object v0, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 316
    .line 317
    if-eqz v2, :cond_c

    .line 318
    .line 319
    const v1, 0x7f120882

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_c
    const v1, 0x7f1208a4

    .line 324
    .line 325
    .line 326
    :goto_5
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    :cond_d
    return-void

    .line 334
    :cond_e
    :goto_6
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 342
    .line 343
    if-eqz v2, :cond_f

    .line 344
    .line 345
    const v1, 0x7f120884

    .line 346
    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_f
    const v1, 0x7f1208ad

    .line 350
    .line 351
    .line 352
    :goto_7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    return-void
.end method

.method public final updateBackButton(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPasswordInput:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Landroid/widget/ImageView;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    const p1, 0x3e9eb852    # 0.31f

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    .line 35
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
