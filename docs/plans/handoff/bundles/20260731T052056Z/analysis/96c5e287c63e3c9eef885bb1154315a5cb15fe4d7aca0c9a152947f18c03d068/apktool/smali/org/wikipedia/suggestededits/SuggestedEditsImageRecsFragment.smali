.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;
.super Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;",
        "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;",
        "Landroidx/core/view/MenuProvider;",
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
.field public _binding:Lorg/maplibre/android/maps/MapChangeReceiver;

.field public bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field public isImpressionLogged:Z

.field public isLoaded:Z

.field public isVisibleToUser:Z

.field public final requestEdit:Landroidx/fragment/app/Fragment$10;

.field public resumedMillis:J

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x7

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
    const/16 v3, 0x8

    .line 15
    .line 16
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 24
    .line 25
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 32
    .line 33
    const/16 v3, 0x10

    .line 34
    .line 35
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 39
    .line 40
    const/16 v4, 0x11

    .line 41
    .line 42
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 46
    .line 47
    const/16 v5, 0x12

    .line 48
    .line 49
    invoke-direct {v4, p0, v0, v5}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lokhttp3/Request$Builder;

    .line 53
    .line 54
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 58
    .line 59
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 75
    .line 76
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->requestEdit:Landroidx/fragment/app/Fragment$10;

    .line 77
    .line 78
    return-void
.end method

.method public static getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;
    .locals 13

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v7, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v7, p1

    .line 9
    :goto_0
    and-int/lit8 p1, p4, 0x2

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    move-object v6, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p2

    .line 16
    :goto_1
    and-int/lit8 p1, p4, 0x4

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    move-object v8, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object/from16 v8, p3

    .line 23
    .line 24
    :goto_2
    and-int/lit8 p1, p4, 0x8

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    move v11, p2

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    const/4 p1, 0x1

    .line 32
    move v11, p1

    .line 33
    :goto_3
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 38
    .line 39
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 40
    .line 41
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    instance-of p1, p1, Lorg/wikipedia/util/Resource$Success;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    move-object p0, v1

    .line 67
    :goto_4
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 68
    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    iget-object p1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->image:Ljava/lang/String;

    .line 72
    .line 73
    move-object v3, p1

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    move-object v3, v1

    .line 76
    :goto_5
    if-eqz p0, :cond_6

    .line 77
    .line 78
    iget-object p1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->source:Ljava/lang/String;

    .line 79
    .line 80
    move-object v4, p1

    .line 81
    goto :goto_6

    .line 82
    :cond_6
    move-object v4, v1

    .line 83
    :goto_6
    if-eqz p0, :cond_7

    .line 84
    .line 85
    iget-object v1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->projects:Ljava/util/List;

    .line 86
    .line 87
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const/4 v10, 0x0

    .line 92
    const/16 v12, 0xc0

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    invoke-static/range {v2 .. v12}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0
.end method


# virtual methods
.method public final callback()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-class v2, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 71
    .line 72
    return-object p0
.end method

.method public final getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onBackPressed()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCanRemoveUnusedStyleImageListenerList:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0xf

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "back"

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 22
    .line 23
    invoke-static {p0, v2, v2, v2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v0, "nosuggestions_dialog"

    .line 37
    .line 38
    invoke-static {v3, v0, v1, p0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 43
    .line 44
    invoke-static {p0, v2, v2, v2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v0, "recommendedimagetoolbar"

    .line 58
    .line 59
    invoke-static {v3, v0, v1, p0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    const/4 p0, 0x1

    .line 63
    return p0
.end method

.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const p0, 0x7f0e0010

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 30

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c01ae

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f090011

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v5, v2

    .line 24
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    const v1, 0x7f090072

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v6, v2

    .line 36
    check-cast v6, Landroidx/core/widget/NestedScrollView;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    const v1, 0x7f090073

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v7, v2

    .line 48
    check-cast v7, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 49
    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    const v1, 0x7f090076

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    if-eqz v8, :cond_0

    .line 60
    .line 61
    const v1, 0x7f090077

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    move-object v9, v2

    .line 69
    check-cast v9, Landroid/widget/TextView;

    .line 70
    .line 71
    if-eqz v9, :cond_0

    .line 72
    .line 73
    const v1, 0x7f09007b

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    move-object v10, v2

    .line 81
    check-cast v10, Landroid/widget/Space;

    .line 82
    .line 83
    if-eqz v10, :cond_0

    .line 84
    .line 85
    const v1, 0x7f090080

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    move-object v11, v2

    .line 93
    check-cast v11, Landroid/widget/TextView;

    .line 94
    .line 95
    if-eqz v11, :cond_0

    .line 96
    .line 97
    const v1, 0x7f0900a7

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    move-object v12, v2

    .line 105
    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 106
    .line 107
    if-eqz v12, :cond_0

    .line 108
    .line 109
    const v1, 0x7f0900cf

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    move-object v13, v2

    .line 117
    check-cast v13, Lorg/wikipedia/views/WikiErrorView;

    .line 118
    .line 119
    if-eqz v13, :cond_0

    .line 120
    .line 121
    const v1, 0x7f0900d0

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    move-object v14, v2

    .line 129
    check-cast v14, Landroid/widget/ProgressBar;

    .line 130
    .line 131
    if-eqz v14, :cond_0

    .line 132
    .line 133
    const v1, 0x7f0902bb

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    move-object v15, v2

    .line 141
    check-cast v15, Landroid/widget/TextView;

    .line 142
    .line 143
    if-eqz v15, :cond_0

    .line 144
    .line 145
    const v1, 0x7f0902bc

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    move-object/from16 v16, v2

    .line 153
    .line 154
    check-cast v16, Lorg/wikipedia/views/WikiCardView;

    .line 155
    .line 156
    if-eqz v16, :cond_0

    .line 157
    .line 158
    const v1, 0x7f0902bd

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Landroid/widget/LinearLayout;

    .line 166
    .line 167
    if-eqz v2, :cond_0

    .line 168
    .line 169
    const v1, 0x7f0902bf

    .line 170
    .line 171
    .line 172
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    move-object/from16 v17, v2

    .line 177
    .line 178
    check-cast v17, Landroid/widget/TextView;

    .line 179
    .line 180
    if-eqz v17, :cond_0

    .line 181
    .line 182
    const v1, 0x7f0902c0

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    move-object/from16 v18, v2

    .line 190
    .line 191
    check-cast v18, Landroid/widget/ImageView;

    .line 192
    .line 193
    if-eqz v18, :cond_0

    .line 194
    .line 195
    const v1, 0x7f0902c8

    .line 196
    .line 197
    .line 198
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    move-object/from16 v19, v2

    .line 203
    .line 204
    check-cast v19, Landroid/widget/LinearLayout;

    .line 205
    .line 206
    if-eqz v19, :cond_0

    .line 207
    .line 208
    const v1, 0x7f0902c9

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    move-object/from16 v20, v2

    .line 216
    .line 217
    check-cast v20, Landroid/widget/TextView;

    .line 218
    .line 219
    if-eqz v20, :cond_0

    .line 220
    .line 221
    const v1, 0x7f0902d1

    .line 222
    .line 223
    .line 224
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    move-object/from16 v21, v2

    .line 229
    .line 230
    check-cast v21, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 231
    .line 232
    if-eqz v21, :cond_0

    .line 233
    .line 234
    const v1, 0x7f0902d2

    .line 235
    .line 236
    .line 237
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    move-object/from16 v22, v2

    .line 242
    .line 243
    check-cast v22, Landroid/widget/TextView;

    .line 244
    .line 245
    if-eqz v22, :cond_0

    .line 246
    .line 247
    const v1, 0x7f0902de

    .line 248
    .line 249
    .line 250
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    move-object/from16 v23, v2

    .line 255
    .line 256
    check-cast v23, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 257
    .line 258
    if-eqz v23, :cond_0

    .line 259
    .line 260
    const v1, 0x7f0902e0

    .line 261
    .line 262
    .line 263
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    move-object/from16 v24, v2

    .line 268
    .line 269
    check-cast v24, Landroid/widget/FrameLayout;

    .line 270
    .line 271
    if-eqz v24, :cond_0

    .line 272
    .line 273
    const v1, 0x7f0902fa

    .line 274
    .line 275
    .line 276
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    move-object/from16 v25, v2

    .line 281
    .line 282
    check-cast v25, Landroid/widget/TextView;

    .line 283
    .line 284
    if-eqz v25, :cond_0

    .line 285
    .line 286
    const v1, 0x7f090462

    .line 287
    .line 288
    .line 289
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    move-object/from16 v26, v2

    .line 294
    .line 295
    check-cast v26, Lcom/google/android/material/button/MaterialButton;

    .line 296
    .line 297
    if-eqz v26, :cond_0

    .line 298
    .line 299
    const v1, 0x7f090537

    .line 300
    .line 301
    .line 302
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    move-object/from16 v27, v2

    .line 307
    .line 308
    check-cast v27, Lcom/google/android/material/button/MaterialButton;

    .line 309
    .line 310
    if-eqz v27, :cond_0

    .line 311
    .line 312
    const v1, 0x7f090575

    .line 313
    .line 314
    .line 315
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    move-object/from16 v28, v2

    .line 320
    .line 321
    check-cast v28, Lcom/google/android/material/button/MaterialButton;

    .line 322
    .line 323
    if-eqz v28, :cond_0

    .line 324
    .line 325
    const v1, 0x7f090599

    .line 326
    .line 327
    .line 328
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    check-cast v2, Landroid/widget/ImageView;

    .line 333
    .line 334
    if-eqz v2, :cond_0

    .line 335
    .line 336
    move-object v4, v0

    .line 337
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 338
    .line 339
    const v1, 0x7f0906d5

    .line 340
    .line 341
    .line 342
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v29

    .line 346
    if-eqz v29, :cond_0

    .line 347
    .line 348
    new-instance v3, Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 349
    .line 350
    invoke-direct/range {v3 .. v29}, Lorg/maplibre/android/maps/MapChangeReceiver;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/button/MaterialButton;Landroidx/core/widget/NestedScrollView;Lorg/wikipedia/views/GoneIfEmptyTextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/Space;Landroid/widget/TextView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lorg/wikipedia/views/WikiErrorView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lorg/wikipedia/views/WikiCardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lorg/wikipedia/views/FaceAndColorDetectImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v0, p0

    .line 354
    .line 355
    iput-object v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 356
    .line 357
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    return-object v4

    .line 361
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    const-string v1, "Missing required view with ID: "

    .line 370
    .line 371
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const/4 v0, 0x0

    .line 379
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 6
    .line 7
    return-void
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

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
    const v0, 0x7f0903fa

    .line 9
    .line 10
    .line 11
    const/16 v1, 0xf

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    const-string v4, "recommendedimagetoolbar"

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 20
    .line 21
    invoke-static {p0, v2, v2, v2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string p1, "more_view_tutorial"

    .line 35
    .line 36
    invoke-static {p1, v4, v0, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraWillChangeListenerList:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 55
    .line 56
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;

    .line 57
    .line 58
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return v3

    .line 65
    :cond_0
    const-string p0, "bottomSheetBehavior"

    .line 66
    .line 67
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2

    .line 71
    :cond_1
    const v0, 0x7f0903ba

    .line 72
    .line 73
    .line 74
    if-ne p1, v0, :cond_2

    .line 75
    .line 76
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 77
    .line 78
    invoke-static {p0, v2, v2, v2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const-string p1, "more_view_help"

    .line 92
    .line 93
    invoke-static {p1, v4, v0, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const p1, 0x7f12007e

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 118
    .line 119
    .line 120
    return v3

    .line 121
    :cond_2
    const v0, 0x7f0903e1

    .line 122
    .line 123
    .line 124
    if-ne p1, v0, :cond_3

    .line 125
    .line 126
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 127
    .line 128
    invoke-static {p0, v2, v2, v2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const-string p1, "report_problem"

    .line 142
    .line 143
    invoke-static {p1, v4, v0, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const v0, 0x7f1201cf

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const v1, 0x7f1201ce

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    const/4 v1, 0x2

    .line 171
    invoke-static {p1, v2, v0, p0, v1}, Lorg/wikipedia/util/ShareUtil;->composeEmail$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    return v3

    .line 175
    :cond_3
    const/4 p0, 0x0

    .line 176
    return p0
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0903fa

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 16
    .line 17
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 18
    .line 19
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    instance-of p0, p0, Lorg/wikipedia/util/Resource$Success;

    .line 24
    .line 25
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-wide v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->resumedMillis:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->resumedMillis:J

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->updateActionButton()V

    .line 9
    .line 10
    .line 11
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
    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 21
    .line 22
    invoke-virtual {p1, p0, v0, v1}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 33
    .line 34
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 51
    .line 52
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onWillStartRenderingMapListenerList:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 69
    .line 70
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lorg/wikipedia/views/WikiCardView;

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lorg/wikipedia/views/WikiCardView;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v3, Landroid/util/TypedValue;

    .line 106
    .line 107
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const v4, 0x7f040094

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v4, v3, p2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    const/4 v4, 0x0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    move-object v3, v4

    .line 126
    :goto_0
    if-eqz v3, :cond_3

    .line 127
    .line 128
    iget v0, v3, Landroid/util/TypedValue;->data:I

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Lorg/wikipedia/views/WikiCardView;

    .line 141
    .line 142
    const/high16 v0, 0x3f000000    # 0.5f

    .line 143
    .line 144
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onPreCompileShaderList:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, Landroid/widget/TextView;

    .line 159
    .line 160
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 161
    .line 162
    const v0, 0x7f1202f0

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onPreCompileShaderList:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p1, Landroid/widget/TextView;

    .line 184
    .line 185
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 186
    .line 187
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0;

    .line 188
    .line 189
    invoke-direct {v3, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;)V

    .line 190
    .line 191
    .line 192
    invoke-direct {v0, v3}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 206
    .line 207
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;

    .line 208
    .line 209
    const/4 v3, 0x4

    .line 210
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteErrorList:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 224
    .line 225
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;

    .line 226
    .line 227
    const/4 v3, 0x5

    .line 228
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onTileActionList:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 242
    .line 243
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;

    .line 244
    .line 245
    const/4 v3, 0x6

    .line 246
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast p1, Lorg/wikipedia/views/WikiCardView;

    .line 260
    .line 261
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;

    .line 262
    .line 263
    const/4 v3, 0x7

    .line 264
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast p1, Lorg/wikipedia/views/WikiCardView;

    .line 278
    .line 279
    new-instance v0, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;

    .line 280
    .line 281
    invoke-direct {v0, v3, p0}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 295
    .line 296
    new-instance v0, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 297
    .line 298
    const/16 v3, 0x9

    .line 299
    .line 300
    invoke-direct {v0, v3, p0}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;-><init>(ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 304
    .line 305
    .line 306
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 307
    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onSpriteLoadedList:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 314
    .line 315
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;

    .line 316
    .line 317
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 324
    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onGlyphsLoadedList:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast p1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-eqz v0, :cond_2

    .line 337
    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    instance-of v0, v0, Ljava/lang/Integer;

    .line 343
    .line 344
    if-nez v0, :cond_1

    .line 345
    .line 346
    goto :goto_1

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    check-cast v0, Ljava/lang/Integer;

    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    goto :goto_2

    .line 361
    :cond_2
    :goto_1
    move v0, v1

    .line 362
    :goto_2
    or-int/2addr p2, v0

    .line 363
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 371
    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 378
    .line 379
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 384
    .line 385
    .line 386
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 387
    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$onViewCreated$13;

    .line 397
    .line 398
    invoke-direct {p2, p0, v4, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$onViewCreated$13;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 399
    .line 400
    .line 401
    invoke-static {p1, v4, v4, p2, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :cond_3
    const-string p0, "Attribute not found; ID=2130968724"

    .line 406
    .line 407
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    return-void
.end method

.method public final publish()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->nextPage(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
