.class public final Lorg/wikipedia/feed/HomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0012\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\t\u001a\u00020\u00088\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\r\u001a\u00020\u000c8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u000f\u001a\u00020\u000e8\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0011\u001a\u00020\u00108\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lorg/wikipedia/feed/HomeFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Lorg/wikipedia/feed/HomeTab;",
        "selectedTab",
        "Lorg/wikipedia/dataclient/WikiSite;",
        "wikiSite",
        "Lorg/wikipedia/feed/TabsState;",
        "tabsState",
        "Lorg/wikipedia/compose/components/NotificationBellState;",
        "notificationState",
        "Lorg/wikipedia/feed/ForYouContentState;",
        "forYouContentState",
        "Lorg/wikipedia/feed/CommunityContentState;",
        "communityContentState",
        "",
        "swipeToExplorePromptShown",
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
.field public final cardImpressions:Ljava/util/LinkedHashSet;

.field public final customizeInterestsLauncher:Landroidx/fragment/app/Fragment$10;

.field public final instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public final pageOverflowMenuViewModel$delegate:Lokhttp3/Request$Builder;

.field public final personalizationResultLauncher:Landroidx/fragment/app/Fragment$10;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/feed/HomeFragment;I)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 13
    .line 14
    invoke-direct {v3, v1, v0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 22
    .line 23
    const-class v4, Lorg/wikipedia/feed/HomeViewModel;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 30
    .line 31
    invoke-direct {v5, v0, v1}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 35
    .line 36
    const/16 v7, 0xd

    .line 37
    .line 38
    invoke-direct {v6, v0, v7}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;

    .line 42
    .line 43
    invoke-direct {v7, p0, v0, v1}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;-><init>(Lorg/wikipedia/feed/HomeFragment;Lkotlin/Lazy;I)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lokhttp3/Request$Builder;

    .line 47
    .line 48
    invoke-direct {v0, v4, v5, v7, v6}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/wikipedia/feed/HomeFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 52
    .line 53
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$1;

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/feed/HomeFragment;I)V

    .line 57
    .line 58
    .line 59
    new-instance v5, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 60
    .line 61
    const/4 v6, 0x6

    .line 62
    invoke-direct {v5, v6, v0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v5}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-class v2, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 76
    .line 77
    const/16 v5, 0xe

    .line 78
    .line 79
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 80
    .line 81
    .line 82
    new-instance v5, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 83
    .line 84
    const/16 v6, 0xf

    .line 85
    .line 86
    invoke-direct {v5, v0, v6}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 87
    .line 88
    .line 89
    new-instance v6, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;

    .line 90
    .line 91
    invoke-direct {v6, p0, v0, v4}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$5;-><init>(Lorg/wikipedia/feed/HomeFragment;Lkotlin/Lazy;I)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lokhttp3/Request$Builder;

    .line 95
    .line 96
    invoke-direct {v0, v2, v3, v6, v5}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lorg/wikipedia/feed/HomeFragment;->pageOverflowMenuViewModel$delegate:Lokhttp3/Request$Builder;

    .line 100
    .line 101
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lorg/wikipedia/feed/HomeFragment;->cardImpressions:Ljava/util/LinkedHashSet;

    .line 107
    .line 108
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 114
    .line 115
    const-string v3, "apps-home-feed"

    .line 116
    .line 117
    invoke-direct {v2, v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 118
    .line 119
    .line 120
    const-string v0, "home_feed"

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iput-object v2, p0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 126
    .line 127
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 128
    .line 129
    const/4 v2, 0x3

    .line 130
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 131
    .line 132
    .line 133
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda2;

    .line 134
    .line 135
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/feed/HomeFragment;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 143
    .line 144
    iput-object v0, p0, Lorg/wikipedia/feed/HomeFragment;->personalizationResultLauncher:Landroidx/fragment/app/Fragment$10;

    .line 145
    .line 146
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 147
    .line 148
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda2;

    .line 152
    .line 153
    invoke-direct {v1, p0, v4}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/feed/HomeFragment;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 161
    .line 162
    iput-object v0, p0, Lorg/wikipedia/feed/HomeFragment;->customizeInterestsLauncher:Landroidx/fragment/app/Fragment$10;

    .line 163
    .line 164
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/feed/HomeViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/HomeFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 7
    .line 8
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isInitialOnboardingEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isExploreFeedUpdatePromptShown()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    sget p1, Lorg/wikipedia/feed/onboarding/ExploreFeedUpdatePromptActivity;->$r8$clinit:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Landroid/content/Intent;

    .line 27
    .line 28
    const-class v1, Lorg/wikipedia/feed/onboarding/ExploreFeedUpdatePromptActivity;

    .line 29
    .line 30
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iget-object p0, p0, Lorg/wikipedia/feed/HomeFragment;->personalizationResultLauncher:Landroidx/fragment/app/Fragment$10;

    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/compose/ui/platform/ComposeView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 p3, 0x0

    .line 11
    const/4 v0, 0x6

    .line 12
    invoke-direct {p1, p2, p3, v0}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    invoke-direct {p2, p0, p3}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/feed/HomeFragment;I)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 22
    .line 23
    const v0, 0x97a02d7

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/feed/HomeFragment;->cardImpressions:Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public final onResume()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    instance-of v3, v2, Lorg/wikipedia/main/MainActivity;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    check-cast v2, Lorg/wikipedia/main/MainActivity;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v2, v4

    .line 19
    :goto_0
    if-eqz v2, :cond_1

    .line 20
    .line 21
    sget-object v3, Lorg/wikipedia/navtab/NavTab;->HOME:Lorg/wikipedia/navtab/NavTab;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lorg/wikipedia/main/MainActivity;->onTabChanged(Lorg/wikipedia/navtab/NavTab;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v2, v3}, Lorg/wikipedia/feed/HomeViewModel;->updateTabCount(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 39
    .line 40
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iget-object v6, v2, Lorg/wikipedia/feed/HomeViewModel;->wikiSite:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 45
    .line 46
    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 47
    .line 48
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lorg/wikipedia/dataclient/WikiSite;

    .line 53
    .line 54
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 55
    .line 56
    check-cast v5, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v6, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 80
    .line 81
    const v6, 0x7f12060c

    .line 82
    .line 83
    .line 84
    invoke-static {v6, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v2, Lorg/wikipedia/feed/HomeViewModel;->_wikiSite:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 88
    .line 89
    sget-object v6, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {v5}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v4, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v2, v0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 105
    .line 106
    const-string v4, "home_feed"

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lorg/wikipedia/feed/HomeFragment;->refreshNotification()V

    .line 112
    .line 113
    .line 114
    const/16 v2, 0x8

    .line 115
    .line 116
    const/16 v4, 0xe

    .line 117
    .line 118
    const/16 v5, 0x7ea

    .line 119
    .line 120
    invoke-static {v5, v2, v4}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 125
    .line 126
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isExploreFeedUpdatePromptShown()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_6

    .line 131
    .line 132
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isHomeFeedUpdateTooltipShown()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_3

    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :cond_3
    new-array v4, v3, [Ljava/lang/Object;

    .line 141
    .line 142
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    const v6, 0x7f120609

    .line 151
    .line 152
    .line 153
    invoke-static {v4, v3, v5, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {v5, v3, v4, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-nez v4, :cond_6

    .line 166
    .line 167
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v4, v2}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_4

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_4
    const v2, 0x7f1205ff

    .line 180
    .line 181
    .line 182
    invoke-static {v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    const/4 v4, 0x4

    .line 187
    if-ge v2, v4, :cond_5

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_5
    invoke-static {v6, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    new-instance v2, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 199
    .line 200
    const/16 v4, 0xa

    .line 201
    .line 202
    invoke-direct {v2, v4, v0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    new-instance v9, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;

    .line 206
    .line 207
    invoke-direct {v9, v0, v3}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/feed/HomeFragment;I)V

    .line 208
    .line 209
    .line 210
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 211
    .line 212
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-static {v4}, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    iget-object v4, v8, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 224
    .line 225
    const v5, 0x7f1202b8

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    iget-object v4, v8, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 236
    .line 237
    const v5, 0x7f1202b7

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    iget-object v4, v8, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 248
    .line 249
    check-cast v4, Landroid/widget/RadioButton;

    .line 250
    .line 251
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    iget-object v4, v8, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyToolbar:Landroid/view/View;

    .line 255
    .line 256
    check-cast v4, Landroid/widget/RadioButton;

    .line 257
    .line 258
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    iget-object v4, v8, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 262
    .line 263
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 264
    .line 265
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 269
    .line 270
    .line 271
    const/16 v5, 0xfa

    .line 272
    .line 273
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 274
    .line 275
    .line 276
    iget-object v4, v8, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 277
    .line 278
    check-cast v4, Lorg/wikipedia/views/PlainPasteEditText;

    .line 279
    .line 280
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    .line 281
    .line 282
    invoke-direct {v6, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 283
    .line 284
    .line 285
    new-array v5, v1, [Landroid/text/InputFilter$LengthFilter;

    .line 286
    .line 287
    aput-object v6, v5, v3

    .line 288
    .line 289
    check-cast v5, [Landroid/text/InputFilter;

    .line 290
    .line 291
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 292
    .line 293
    .line 294
    new-instance v5, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda3;

    .line 295
    .line 296
    invoke-direct {v5, v3, v10, v8}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda3;-><init>(ILandroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/databinding/ActivityTalkReplyBinding;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 300
    .line 301
    .line 302
    iget-object v4, v8, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 303
    .line 304
    check-cast v4, Landroid/widget/Button;

    .line 305
    .line 306
    new-instance v5, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda3;

    .line 307
    .line 308
    invoke-direct {v5, v1, v2, v11}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    .line 313
    .line 314
    iget-object v1, v8, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 315
    .line 316
    check-cast v1, Landroid/widget/Button;

    .line 317
    .line 318
    new-instance v7, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;

    .line 319
    .line 320
    const/4 v12, 0x0

    .line 321
    invoke-direct/range {v7 .. v12}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    .line 326
    .line 327
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 328
    .line 329
    const v2, 0x7f130007

    .line 330
    .line 331
    .line 332
    invoke-direct {v1, v10, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 333
    .line 334
    .line 335
    iget-object v2, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 338
    .line 339
    iput-boolean v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 340
    .line 341
    iget-object v3, v8, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 342
    .line 343
    check-cast v3, Landroid/widget/ScrollView;

    .line 344
    .line 345
    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 346
    .line 347
    const/16 v18, 0x0

    .line 348
    .line 349
    const/16 v19, 0xfc

    .line 350
    .line 351
    iget-object v12, v0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 352
    .line 353
    const-string v13, "impression"

    .line 354
    .line 355
    const-string v14, "home_feed_feedback"

    .line 356
    .line 357
    const/4 v15, 0x0

    .line 358
    const/16 v16, 0x0

    .line 359
    .line 360
    const/16 v17, 0x0

    .line 361
    .line 362
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 370
    .line 371
    :cond_6
    :goto_1
    return-void
.end method

.method public final refreshNotification()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->_unreadCount:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lorg/wikipedia/compose/components/NotificationBellState;

    .line 13
    .line 14
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 15
    .line 16
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lorg/wikipedia/compose/components/NotificationBellState;

    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Lorg/wikipedia/compose/components/NotificationBellState;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    return-void
.end method

.method public final selectTab(Lorg/wikipedia/feed/HomeTab;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lorg/wikipedia/feed/HomeViewModel;->_selectedTab:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    instance-of p1, p0, Lorg/wikipedia/main/MainActivity;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    move-object v1, p0

    .line 26
    check-cast v1, Lorg/wikipedia/main/MainActivity;

    .line 27
    .line 28
    :cond_0
    if-eqz v1, :cond_1

    .line 29
    .line 30
    sget-object p0, Lorg/wikipedia/navtab/NavTab;->HOME:Lorg/wikipedia/navtab/NavTab;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Lorg/wikipedia/main/MainActivity;->onTabChanged(Lorg/wikipedia/navtab/NavTab;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
