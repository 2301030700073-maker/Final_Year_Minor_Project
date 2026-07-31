.class public final Lorg/wikipedia/games/GamesHubFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/games/GamesHubFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
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
.field public final launchOnThisDayGameActivity:Landroidx/fragment/app/Fragment$10;

.field public onThisDayGameArchiveCalendarHelper:Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x13

    .line 13
    .line 14
    invoke-direct {v1, v2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 22
    .line 23
    iput-object v0, p0, Lorg/wikipedia/games/GamesHubFragment;->launchOnThisDayGameActivity:Landroidx/fragment/app/Fragment$10;

    .line 24
    .line 25
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 26
    .line 27
    const/16 v1, 0xe

    .line 28
    .line 29
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 33
    .line 34
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 35
    .line 36
    const/16 v3, 0xf

    .line 37
    .line 38
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-class v1, Lorg/wikipedia/games/GamesHubViewModel;

    .line 46
    .line 47
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 54
    .line 55
    const/16 v3, 0x18

    .line 56
    .line 57
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 61
    .line 62
    const/16 v4, 0x19

    .line 63
    .line 64
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 68
    .line 69
    const/4 v5, 0x7

    .line 70
    invoke-direct {v4, p0, v0, v5}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lokhttp3/Request$Builder;

    .line 74
    .line 75
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lorg/wikipedia/games/GamesHubFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/games/GamesHubViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/games/GamesHubViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/games/GamesHubFragment;->getViewModel()Lorg/wikipedia/games/GamesHubViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v6, p1, Lorg/wikipedia/games/GamesHubViewModel;->selectedLanguage:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v0, 0x3bc

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v3, "impression"

    .line 15
    .line 16
    const-string v4, "games_hub"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    invoke-static/range {v0 .. v7}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/games/GamesHubFragment;->getViewModel()Lorg/wikipedia/games/GamesHubViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget-object p2, p2, Lorg/wikipedia/games/GamesHubViewModel;->selectedLanguage:Ljava/lang/String;

    .line 30
    .line 31
    new-instance p3, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    const/16 v0, 0xa

    .line 34
    .line 35
    invoke-direct {p3, v0, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p0, p2, p3}, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lorg/wikipedia/games/GamesHubFragment;->onThisDayGameArchiveCalendarHelper:Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragmentLifecycleCallbacks:Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;

    .line 48
    .line 49
    const/4 p3, 0x1

    .line 50
    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/FragmentManagerImpl;->registerFragmentLifecycleCallbacks(Landroidx/work/OperationKt;Z)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    .line 62
    .line 63
    new-instance p2, Landroidx/compose/ui/platform/ComposeView;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x6

    .line 70
    invoke-direct {p2, v1, v0, v2}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 74
    .line 75
    const/4 v1, -0x1

    .line 76
    invoke-direct {v0, v1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 83
    .line 84
    const/4 v1, 0x4

    .line 85
    invoke-direct {v0, v1, p0, p2}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 89
    .line 90
    const v1, -0x15b4c71b

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v0, p3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubFragment;->onThisDayGameArchiveCalendarHelper:Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragmentLifecycleCallbacks:Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManagerImpl;->unregisterFragmentLifecycleCallbacks(Landroidx/work/OperationKt;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "onThisDayGameArchiveCalendarHelper"

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method
