.class public final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0005\u0006B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/core/view/MenuProvider;",
        "<init>",
        "()V",
        "org/wikipedia/media/AvPlayer",
        "RecyclerAdapter",
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
.field public _binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

.field public addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

.field public addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

.field public final callback:Lorg/wikipedia/media/AvPlayer;

.field public final displayedTasks:Ljava/util/ArrayList;

.field public imageRecommendationsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

.field public final learnMoreClickListener:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

.field public notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

.field public final requestAddImageTags:Landroidx/fragment/app/Fragment$10;

.field public final requestAddLanguage:Landroidx/fragment/app/Fragment$10;

.field public final requestLogin:Landroidx/fragment/app/Fragment$10;

.field public vandalismPatrolTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/16 v1, 0xd

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;

    .line 14
    .line 15
    const/16 v3, 0xe

    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/watchlist/WatchlistFragment$special$$inlined$viewModels$default$1;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 25
    .line 26
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 33
    .line 34
    const/16 v3, 0x16

    .line 35
    .line 36
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 40
    .line 41
    const/16 v4, 0x17

    .line 42
    .line 43
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 47
    .line 48
    const/16 v6, 0x15

    .line 49
    .line 50
    invoke-direct {v5, p0, v0, v6}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lokhttp3/Request$Builder;

    .line 54
    .line 55
    invoke-direct {v0, v1, v2, v5, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->displayedTasks:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance v0, Lorg/wikipedia/media/AvPlayer;

    .line 68
    .line 69
    invoke-direct {v0, v4, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->callback:Lorg/wikipedia/media/AvPlayer;

    .line 73
    .line 74
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 75
    .line 76
    const/4 v1, 0x3

    .line 77
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 91
    .line 92
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->requestAddLanguage:Landroidx/fragment/app/Fragment$10;

    .line 93
    .line 94
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    const/4 v3, 0x2

    .line 102
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 110
    .line 111
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->requestAddImageTags:Landroidx/fragment/app/Fragment$10;

    .line 112
    .line 113
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 114
    .line 115
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 128
    .line 129
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->requestLogin:Landroidx/fragment/app/Fragment$10;

    .line 130
    .line 131
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

    .line 132
    .line 133
    const/4 v1, 0x4

    .line 134
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->learnMoreClickListener:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

    .line 138
    .line 139
    return-void
.end method


# virtual methods
.method public final clearContents(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 34
    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 48
    .line 49
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lorg/wikipedia/views/MessageCardView;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    if-eqz p1, :cond_0

    .line 81
    .line 82
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 90
    .line 91
    invoke-virtual {p1, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 92
    .line 93
    .line 94
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    new-instance v0, Landroid/util/TypedValue;

    .line 108
    .line 109
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const/4 v1, 0x1

    .line 117
    const v2, 0x7f0404e7

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x0

    .line 128
    :goto_0
    if-eqz v0, :cond_2

    .line 129
    .line 130
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 131
    .line 132
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_2
    const-string p0, "Attribute not found; ID=2130969831"

    .line 137
    .line 138
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 8
    .line 9
    return-object p0
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
    const p0, 0x7f0e0023

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
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c01b1

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
    const v1, 0x7f09021f

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
    check-cast v5, Lorg/wikipedia/views/WikiErrorView;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const-string v3, "Missing required view with ID: "

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    const v1, 0x7f090324

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    const v1, 0x7f090325

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    move-object v8, v6

    .line 48
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    const v1, 0x7f090326

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    move-object v9, v6

    .line 60
    check-cast v9, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    const v1, 0x7f0905f5

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    move-object v10, v6

    .line 72
    check-cast v10, Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v10, :cond_0

    .line 75
    .line 76
    const v1, 0x7f0905f6

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    move-object v11, v6

    .line 84
    check-cast v11, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz v11, :cond_0

    .line 87
    .line 88
    move-object v12, v4

    .line 89
    check-cast v12, Landroid/widget/LinearLayout;

    .line 90
    .line 91
    const v1, 0x7f09068a

    .line 92
    .line 93
    .line 94
    invoke-static {v4, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    move-object v13, v6

    .line 99
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    if-eqz v13, :cond_0

    .line 102
    .line 103
    const v1, 0x7f09076a

    .line 104
    .line 105
    .line 106
    invoke-static {v4, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    move-object v14, v6

    .line 111
    check-cast v14, Landroid/widget/TextView;

    .line 112
    .line 113
    if-eqz v14, :cond_0

    .line 114
    .line 115
    const v1, 0x7f09076b

    .line 116
    .line 117
    .line 118
    invoke-static {v4, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    move-object v15, v6

    .line 123
    check-cast v15, Landroid/widget/TextView;

    .line 124
    .line 125
    if-eqz v15, :cond_0

    .line 126
    .line 127
    new-instance v6, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 128
    .line 129
    move-object v7, v6

    .line 130
    invoke-direct/range {v7 .. v15}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 131
    .line 132
    .line 133
    const v1, 0x7f090408

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    move-object v7, v4

    .line 141
    check-cast v7, Lorg/wikipedia/views/MessageCardView;

    .line 142
    .line 143
    if-eqz v7, :cond_1

    .line 144
    .line 145
    const v1, 0x7f090513

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    move-object v8, v4

    .line 153
    check-cast v8, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 154
    .line 155
    if-eqz v8, :cond_1

    .line 156
    .line 157
    const v1, 0x7f09063d

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    move-object v9, v4

    .line 165
    check-cast v9, Landroidx/core/widget/NestedScrollView;

    .line 166
    .line 167
    if-eqz v9, :cond_1

    .line 168
    .line 169
    move-object v4, v0

    .line 170
    check-cast v4, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 171
    .line 172
    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 173
    .line 174
    move-object v10, v4

    .line 175
    invoke-direct/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    move-object/from16 v0, p0

    .line 179
    .line 180
    iput-object v3, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    return-object v4

    .line 186
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-object v2

    .line 202
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-object v2
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 22
    .line 23
    return-void
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const v1, 0x7f0903d0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 24
    .line 25
    .line 26
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 27
    .line 28
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0, v3}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

    .line 36
    .line 37
    const/4 v4, 0x7

    .line 38
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    const v3, 0x7f12047f

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 58
    .line 59
    .line 60
    new-array p1, v1, [Landroid/view/View;

    .line 61
    .line 62
    aput-object v0, p1, v2

    .line 63
    .line 64
    aget-object p1, p1, v2

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->updateNotificationDot$1(Z)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->refreshContents$1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 12
    .line 13
    iget-object p2, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p2, Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Landroid/widget/TextView;

    .line 20
    .line 21
    const-string v0, "org.wikipedia"

    .line 22
    .line 23
    const-string v1, "beta"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v3, 0x3

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x2

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    move v0, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "alpha"

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    move v0, v5

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v1, "dev"

    .line 48
    .line 49
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    move v0, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v0, v2

    .line 58
    :goto_0
    const/16 v1, 0x8

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    if-eq v0, v4, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :goto_1
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

    .line 72
    .line 73
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

    .line 80
    .line 81
    invoke-direct {p1, p0, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Lorg/wikipedia/views/NotificationButtonView;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-direct {p1, p2, v0}, Lorg/wikipedia/views/NotificationButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 108
    .line 109
    invoke-virtual {p1, p0, p2, v5}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 120
    .line 121
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Landroid/widget/TextView;

    .line 124
    .line 125
    const p2, 0x7f1201c7

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p1, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 143
    .line 144
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p1, Landroid/widget/TextView;

    .line 147
    .line 148
    const p2, 0x7f1201c6

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 166
    .line 167
    iget-object p2, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    .line 171
    iget-object v5, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v5, Landroid/widget/LinearLayout;

    .line 174
    .line 175
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->learnMoreClickListener:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

    .line 176
    .line 177
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    iget-object v5, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 183
    .line 184
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v5, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 195
    .line 196
    new-instance v6, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    invoke-direct {v6, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v5, Lorg/wikipedia/views/WikiErrorView;

    .line 212
    .line 213
    new-instance v6, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

    .line 214
    .line 215
    invoke-direct {v6, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v6}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v5, Lorg/wikipedia/views/WikiErrorView;

    .line 229
    .line 230
    new-instance v6, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

    .line 231
    .line 232
    invoke-direct {v6, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v6}, Lorg/wikipedia/views/WikiErrorView;->setLoginClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 239
    .line 240
    invoke-direct {v5, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 244
    .line 245
    .line 246
    new-instance v4, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;

    .line 247
    .line 248
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->displayedTasks:Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/util/ArrayList;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p1, Landroid/widget/LinearLayout;

    .line 259
    .line 260
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;

    .line 272
    .line 273
    invoke-direct {p2, p0, v0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V

    .line 274
    .line 275
    .line 276
    invoke-static {p1, v0, v0, p2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 277
    .line 278
    .line 279
    return-void
.end method

.method public final refreshContents$1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    .line 14
    new-instance v1, Lorg/wikipedia/util/Resource$Loading;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->wikiSupportsImageRecommendations:Z

    .line 28
    .line 29
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 54
    .line 55
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;

    .line 56
    .line 57
    invoke-direct {v3, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x2

    .line 61
    invoke-static {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    :goto_0
    new-instance p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$RequireLogin;

    .line 69
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final setFinalUIState()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v12, 0x0

    .line 12
    const/16 v13, 0x3ff4

    .line 13
    .line 14
    const-string v1, "edit_home"

    .line 15
    .line 16
    const-string v2, "impression"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    invoke-static/range {v1 .. v13}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 34
    .line 35
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "test"

    .line 44
    .line 45
    invoke-static {v1, v2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const-string v3, "en"

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    const/4 v5, 0x1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_0
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->maybePauseAndGetEndDate()Ljava/util/Date;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    iget v6, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 66
    .line 67
    if-ge v6, v4, :cond_1

    .line 68
    .line 69
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    invoke-virtual {p0, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    .line 94
    .line 95
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-array v3, v5, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object v2, v3, v0

    .line 102
    .line 103
    const v2, 0x7f1208b9

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/MessageCardView;->setDisabled(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    .line 124
    .line 125
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;

    .line 126
    .line 127
    const/4 v3, 0x6

    .line 128
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V

    .line 129
    .line 130
    .line 131
    const v3, 0x7f1208e9

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v3, v2}, Lorg/wikipedia/views/MessageCardView;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Lorg/wikipedia/views/MessageCardView;

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_1
    sget v6, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->totalEdits:I

    .line 151
    .line 152
    const/16 v7, 0x64

    .line 153
    .line 154
    if-gt v6, v7, :cond_2

    .line 155
    .line 156
    sget v6, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->totalReverts:I

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    sget v7, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->totalReverts:I

    .line 160
    .line 161
    int-to-float v7, v7

    .line 162
    int-to-float v6, v6

    .line 163
    div-float/2addr v7, v6

    .line 164
    const/high16 v6, 0x42c80000    # 100.0f

    .line 165
    .line 166
    mul-float/2addr v7, v6

    .line 167
    float-to-double v6, v7

    .line 168
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 169
    .line 170
    .line 171
    move-result-wide v6

    .line 172
    double-to-float v6, v6

    .line 173
    float-to-int v6, v6

    .line 174
    :goto_0
    const/4 v7, 0x7

    .line 175
    if-le v6, v7, :cond_3

    .line 176
    .line 177
    invoke-virtual {p0, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    .line 188
    .line 189
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    new-array v3, v5, [Ljava/lang/Object;

    .line 194
    .line 195
    aput-object v2, v3, v0

    .line 196
    .line 197
    const v2, 0x7f1208a0

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/MessageCardView;->setDisabled(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p0, Lorg/wikipedia/views/MessageCardView;

    .line 218
    .line 219
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_3
    if-eqz v1, :cond_4

    .line 224
    .line 225
    invoke-virtual {p0, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    .line 226
    .line 227
    .line 228
    invoke-static {v1}, Lj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Lj$/time/Instant;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-static {v1, v2}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v2, Lorg/wikipedia/views/MessageCardView;

    .line 252
    .line 253
    sget-object v3, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    const/4 v4, 0x2

    .line 267
    new-array v4, v4, [Ljava/lang/Object;

    .line 268
    .line 269
    aput-object v1, v4, v0

    .line 270
    .line 271
    aput-object v3, v4, v5

    .line 272
    .line 273
    const v1, 0x7f1208f0

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v1, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v1}, Lorg/wikipedia/views/MessageCardView;->setPaused(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 287
    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast p0, Lorg/wikipedia/views/MessageCardView;

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    .line 307
    .line 308
    const/16 v6, 0x8

    .line 309
    .line 310
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    :goto_1
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->displayedTasks:Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 316
    .line 317
    .line 318
    new-instance v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 319
    .line 320
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 321
    .line 322
    .line 323
    iput-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 324
    .line 325
    const v7, 0x7f1208d3

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    iput-object v7, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->title:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 335
    .line 336
    const/4 v7, 0x0

    .line 337
    const-string v8, "addImageTagsTask"

    .line 338
    .line 339
    if-eqz v6, :cond_2b

    .line 340
    .line 341
    const v9, 0x7f1208e1

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    iput-object v9, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->description:Ljava/lang/String;

    .line 349
    .line 350
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 351
    .line 352
    if-eqz v6, :cond_2a

    .line 353
    .line 354
    const v9, 0x7f08018a

    .line 355
    .line 356
    .line 357
    iput v9, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->imageDrawable:I

    .line 358
    .line 359
    const v9, 0x7f120907

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    iput-object v10, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->primaryAction:Ljava/lang/String;

    .line 367
    .line 368
    new-instance v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 369
    .line 370
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 371
    .line 372
    .line 373
    iput-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 374
    .line 375
    const v10, 0x7f1208c2

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    iput-object v10, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->title:Ljava/lang/String;

    .line 383
    .line 384
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 385
    .line 386
    const-string v10, "addImageCaptionsTask"

    .line 387
    .line 388
    if-eqz v6, :cond_29

    .line 389
    .line 390
    const v11, 0x7f1208c3

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v11

    .line 397
    iput-object v11, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->description:Ljava/lang/String;

    .line 398
    .line 399
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 400
    .line 401
    if-eqz v6, :cond_28

    .line 402
    .line 403
    const v11, 0x7f080189

    .line 404
    .line 405
    .line 406
    iput v11, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->imageDrawable:I

    .line 407
    .line 408
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v11

    .line 412
    iput-object v11, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->primaryAction:Ljava/lang/String;

    .line 413
    .line 414
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 415
    .line 416
    if-eqz v6, :cond_27

    .line 417
    .line 418
    const v11, 0x7f120908

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v12

    .line 425
    iput-object v12, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->secondaryAction:Ljava/lang/String;

    .line 426
    .line 427
    new-instance v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 428
    .line 429
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 430
    .line 431
    .line 432
    iput-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 433
    .line 434
    const v12, 0x7f120133

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v12

    .line 441
    iput-object v12, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->title:Ljava/lang/String;

    .line 442
    .line 443
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 444
    .line 445
    const-string v12, "addDescriptionsTask"

    .line 446
    .line 447
    if-eqz v6, :cond_26

    .line 448
    .line 449
    const v13, 0x7f120883

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v13

    .line 456
    iput-object v13, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->description:Ljava/lang/String;

    .line 457
    .line 458
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 459
    .line 460
    if-eqz v6, :cond_25

    .line 461
    .line 462
    const v13, 0x7f08011c

    .line 463
    .line 464
    .line 465
    iput v13, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->imageDrawable:I

    .line 466
    .line 467
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v13

    .line 471
    iput-object v13, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->primaryAction:Ljava/lang/String;

    .line 472
    .line 473
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 474
    .line 475
    if-eqz v6, :cond_24

    .line 476
    .line 477
    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v11

    .line 481
    iput-object v11, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->secondaryAction:Ljava/lang/String;

    .line 482
    .line 483
    new-instance v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 484
    .line 485
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 486
    .line 487
    .line 488
    iput-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->imageRecommendationsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 489
    .line 490
    const v11, 0x7f1208d1

    .line 491
    .line 492
    .line 493
    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v11

    .line 497
    iput-object v11, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->title:Ljava/lang/String;

    .line 498
    .line 499
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->imageRecommendationsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 500
    .line 501
    const-string v11, "imageRecommendationsTask"

    .line 502
    .line 503
    if-eqz v6, :cond_23

    .line 504
    .line 505
    const v13, 0x7f1208d0

    .line 506
    .line 507
    .line 508
    invoke-virtual {p0, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v13

    .line 512
    iput-object v13, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->description:Ljava/lang/String;

    .line 513
    .line 514
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->imageRecommendationsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 515
    .line 516
    if-eqz v6, :cond_22

    .line 517
    .line 518
    const v13, 0x7f08010f

    .line 519
    .line 520
    .line 521
    iput v13, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->imageDrawable:I

    .line 522
    .line 523
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v9

    .line 527
    iput-object v9, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->primaryAction:Ljava/lang/String;

    .line 528
    .line 529
    new-instance v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 530
    .line 531
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 532
    .line 533
    .line 534
    iput-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->vandalismPatrolTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 535
    .line 536
    const v9, 0x7f1208a6

    .line 537
    .line 538
    .line 539
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v9

    .line 543
    iput-object v9, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->title:Ljava/lang/String;

    .line 544
    .line 545
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->vandalismPatrolTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 546
    .line 547
    const-string/jumbo v9, "vandalismPatrolTask"

    .line 548
    .line 549
    .line 550
    if-eqz v6, :cond_21

    .line 551
    .line 552
    const v13, 0x7f1208a7

    .line 553
    .line 554
    .line 555
    invoke-virtual {p0, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v13

    .line 559
    iput-object v13, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->description:Ljava/lang/String;

    .line 560
    .line 561
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->vandalismPatrolTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 562
    .line 563
    if-eqz v6, :cond_20

    .line 564
    .line 565
    const v13, 0x7f1208a8

    .line 566
    .line 567
    .line 568
    invoke-virtual {p0, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v13

    .line 572
    iput-object v13, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->primaryAction:Ljava/lang/String;

    .line 573
    .line 574
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->vandalismPatrolTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 575
    .line 576
    if-eqz v6, :cond_1f

    .line 577
    .line 578
    const v13, 0x7f0801ca

    .line 579
    .line 580
    .line 581
    iput v13, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->imageDrawable:I

    .line 582
    .line 583
    const v13, 0x7f080139

    .line 584
    .line 585
    .line 586
    iput v13, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->primaryActionIcon:I

    .line 587
    .line 588
    sget-object v13, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 589
    .line 590
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsOnboardingShown()Z

    .line 591
    .line 592
    .line 593
    move-result v13

    .line 594
    xor-int/2addr v13, v5

    .line 595
    iput-boolean v13, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->new:Z

    .line 596
    .line 597
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 598
    .line 599
    .line 600
    move-result-object v6

    .line 601
    iget-boolean v6, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->allowToPatrolEdits:Z

    .line 602
    .line 603
    if-eqz v6, :cond_7

    .line 604
    .line 605
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 606
    .line 607
    .line 608
    move-result-object v6

    .line 609
    iget-object v6, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageWikipedia:Ljava/lang/String;

    .line 610
    .line 611
    if-eqz v6, :cond_5

    .line 612
    .line 613
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 614
    .line 615
    .line 616
    move-result v6

    .line 617
    if-nez v6, :cond_7

    .line 618
    .line 619
    :cond_5
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    invoke-virtual {v6}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v6

    .line 627
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    const v13, 0x7f120665

    .line 631
    .line 632
    .line 633
    invoke-static {v13, v6}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 634
    .line 635
    .line 636
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->vandalismPatrolTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 637
    .line 638
    if-eqz v6, :cond_6

    .line 639
    .line 640
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    goto :goto_2

    .line 644
    :cond_6
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    throw v7

    .line 648
    :cond_7
    :goto_2
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 649
    .line 650
    .line 651
    move-result-object v6

    .line 652
    invoke-virtual {v6}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 657
    .line 658
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v9

    .line 665
    if-nez v9, :cond_9

    .line 666
    .line 667
    invoke-static {v6, v2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    if-eqz v2, :cond_8

    .line 672
    .line 673
    goto :goto_3

    .line 674
    :cond_8
    move v2, v0

    .line 675
    goto :goto_4

    .line 676
    :cond_9
    :goto_3
    move v2, v5

    .line 677
    :goto_4
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 678
    .line 679
    .line 680
    move-result-object v6

    .line 681
    iget v6, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 682
    .line 683
    const/16 v9, 0x32

    .line 684
    .line 685
    if-eqz v2, :cond_a

    .line 686
    .line 687
    move v4, v9

    .line 688
    :cond_a
    if-le v6, v4, :cond_b

    .line 689
    .line 690
    move v4, v5

    .line 691
    goto :goto_5

    .line 692
    :cond_b
    move v4, v0

    .line 693
    :goto_5
    if-eqz v2, :cond_c

    .line 694
    .line 695
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 696
    .line 697
    .line 698
    move-result-object v6

    .line 699
    iget-object v6, v6, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageWikipedia:Ljava/lang/String;

    .line 700
    .line 701
    if-eqz v6, :cond_d

    .line 702
    .line 703
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 704
    .line 705
    .line 706
    move-result v6

    .line 707
    if-nez v6, :cond_c

    .line 708
    .line 709
    goto :goto_6

    .line 710
    :cond_c
    if-nez v2, :cond_10

    .line 711
    .line 712
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    iget-object v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageWikidata:Ljava/lang/String;

    .line 717
    .line 718
    if-eqz v2, :cond_d

    .line 719
    .line 720
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 721
    .line 722
    .line 723
    move-result v2

    .line 724
    if-nez v2, :cond_10

    .line 725
    .line 726
    :cond_d
    :goto_6
    if-eqz v4, :cond_10

    .line 727
    .line 728
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 729
    .line 730
    if-eqz v2, :cond_f

    .line 731
    .line 732
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    iget v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 740
    .line 741
    if-ge v2, v9, :cond_10

    .line 742
    .line 743
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    check-cast v2, Ljava/util/ArrayList;

    .line 748
    .line 749
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-eqz v2, :cond_10

    .line 754
    .line 755
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addDescriptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 756
    .line 757
    if-eqz v2, :cond_e

    .line 758
    .line 759
    iput-object v7, v2, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->secondaryAction:Ljava/lang/String;

    .line 760
    .line 761
    goto :goto_7

    .line 762
    :cond_e
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    throw v7

    .line 766
    :cond_f
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    throw v7

    .line 770
    :cond_10
    :goto_7
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 779
    .line 780
    const-string v3, "de"

    .line 781
    .line 782
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    if-eqz v2, :cond_11

    .line 787
    .line 788
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    iget v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->homeContributions:I

    .line 793
    .line 794
    if-gt v2, v9, :cond_12

    .line 795
    .line 796
    :cond_11
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 805
    .line 806
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    if-nez v2, :cond_15

    .line 811
    .line 812
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    iget v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 817
    .line 818
    if-le v2, v9, :cond_15

    .line 819
    .line 820
    :cond_12
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    iget-boolean v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->wikiSupportsImageRecommendations:Z

    .line 825
    .line 826
    if-eqz v2, :cond_15

    .line 827
    .line 828
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    iget-object v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageWikipedia:Ljava/lang/String;

    .line 833
    .line 834
    if-eqz v2, :cond_13

    .line 835
    .line 836
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 837
    .line 838
    .line 839
    move-result v2

    .line 840
    if-nez v2, :cond_15

    .line 841
    .line 842
    :cond_13
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->imageRecommendationsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 843
    .line 844
    if-eqz v2, :cond_14

    .line 845
    .line 846
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    goto :goto_8

    .line 850
    :cond_14
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    throw v7

    .line 854
    :cond_15
    :goto_8
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    iget-object v2, v2, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageCommons:Ljava/lang/String;

    .line 859
    .line 860
    if-eqz v2, :cond_16

    .line 861
    .line 862
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 863
    .line 864
    .line 865
    move-result v2

    .line 866
    if-nez v2, :cond_17

    .line 867
    .line 868
    :cond_16
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageCaptionsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 869
    .line 870
    if-eqz v2, :cond_1e

    .line 871
    .line 872
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    .line 874
    .line 875
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->addImageTagsTask:Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 876
    .line 877
    if-eqz v2, :cond_1d

    .line 878
    .line 879
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    :cond_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    if-eqz v1, :cond_19

    .line 887
    .line 888
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageWikipedia:Ljava/lang/String;

    .line 893
    .line 894
    if-eqz v1, :cond_19

    .line 895
    .line 896
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 897
    .line 898
    .line 899
    move-result v1

    .line 900
    if-nez v1, :cond_18

    .line 901
    .line 902
    goto :goto_9

    .line 903
    :cond_18
    invoke-virtual {p0, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->setIPBlockedStatus()V

    .line 907
    .line 908
    .line 909
    return-void

    .line 910
    :cond_19
    :goto_9
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 911
    .line 912
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 913
    .line 914
    .line 915
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 916
    .line 917
    check-cast v1, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 918
    .line 919
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 920
    .line 921
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 922
    .line 923
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 924
    .line 925
    .line 926
    move-result-object v1

    .line 927
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 931
    .line 932
    .line 933
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 934
    .line 935
    .line 936
    move-result-object v1

    .line 937
    iget v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 938
    .line 939
    if-nez v1, :cond_1a

    .line 940
    .line 941
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 942
    .line 943
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 944
    .line 945
    .line 946
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 947
    .line 948
    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    .line 949
    .line 950
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 951
    .line 952
    .line 953
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 954
    .line 955
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 956
    .line 957
    .line 958
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 959
    .line 960
    check-cast v1, Lorg/wikipedia/views/MessageCardView;

    .line 961
    .line 962
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    new-array v3, v5, [Ljava/lang/Object;

    .line 967
    .line 968
    aput-object v2, v3, v0

    .line 969
    .line 970
    const v2, 0x7f1208ee

    .line 971
    .line 972
    .line 973
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v2

    .line 977
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/MessageCardView;->setOnboarding(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    :cond_1a
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 984
    .line 985
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    .line 987
    .line 988
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 989
    .line 990
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 991
    .line 992
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 993
    .line 994
    .line 995
    move-result-object v2

    .line 996
    new-instance v3, Landroid/util/TypedValue;

    .line 997
    .line 998
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    const v4, 0x7f0404e7

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v2

    .line 1012
    if-eqz v2, :cond_1b

    .line 1013
    .line 1014
    move-object v7, v3

    .line 1015
    :cond_1b
    if-eqz v7, :cond_1c

    .line 1016
    .line 1017
    iget v2, v7, Landroid/util/TypedValue;->data:I

    .line 1018
    .line 1019
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1020
    .line 1021
    .line 1022
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1023
    .line 1024
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1025
    .line 1026
    .line 1027
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 1028
    .line 1029
    check-cast p0, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 1030
    .line 1031
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 1032
    .line 1033
    check-cast p0, Landroid/widget/LinearLayout;

    .line 1034
    .line 1035
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    .line 1037
    .line 1038
    return-void

    .line 1039
    :cond_1c
    const-string p0, "Attribute not found; ID=2130969831"

    .line 1040
    .line 1041
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    return-void

    .line 1045
    :cond_1d
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    throw v7

    .line 1049
    :cond_1e
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    throw v7

    .line 1053
    :cond_1f
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    throw v7

    .line 1057
    :cond_20
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    throw v7

    .line 1061
    :cond_21
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    throw v7

    .line 1065
    :cond_22
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    throw v7

    .line 1069
    :cond_23
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    throw v7

    .line 1073
    :cond_24
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    throw v7

    .line 1077
    :cond_25
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    throw v7

    .line 1081
    :cond_26
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    throw v7

    .line 1085
    :cond_27
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    throw v7

    .line 1089
    :cond_28
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    throw v7

    .line 1093
    :cond_29
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    throw v7

    .line 1097
    :cond_2a
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    throw v7

    .line 1101
    :cond_2b
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    throw v7
.end method

.method public final setIPBlockedStatus()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lorg/wikipedia/views/MessageCardView;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageWikipedia:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/MessageCardView;->setIPBlocked(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lorg/wikipedia/views/MessageCardView;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final updateNotificationDot$1(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 12
    .line 13
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/views/NotificationButtonView;->runAnimation()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
