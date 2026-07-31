.class public final Lorg/wikipedia/diff/ArticleEditDetailsFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0006B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/wikipedia/diff/ArticleEditDetailsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;",
        "Landroidx/core/view/MenuProvider;",
        "<init>",
        "()V",
        "org/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment",
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
.field public _binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

.field public final actionBarOffsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

.field public final openQualityAndIntentFiltersPage:Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

.field public final requestTalk:Landroidx/fragment/app/Fragment$10;

.field public final sequentialTooltipRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    invoke-direct {v3, v4, v0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 23
    .line 24
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 31
    .line 32
    const/16 v5, 0x9

    .line 33
    .line 34
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 38
    .line 39
    const/16 v6, 0xa

    .line 40
    .line 41
    invoke-direct {v5, v0, v6}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 42
    .line 43
    .line 44
    new-instance v6, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 45
    .line 46
    invoke-direct {v6, p0, v0, v1}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lokhttp3/Request$Builder;

    .line 50
    .line 51
    invoke-direct {v0, v2, v3, v6, v5}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 55
    .line 56
    new-instance v0, Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->actionBarOffsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 65
    .line 66
    invoke-direct {v0, v4}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 79
    .line 80
    iput-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->requestTalk:Landroidx/fragment/app/Fragment$10;

    .line 81
    .line 82
    new-instance v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 83
    .line 84
    const/4 v1, 0x5

    .line 85
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sequentialTooltipRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 89
    .line 90
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->openQualityAndIntentFiltersPage:Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final callback()Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;
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
    const-class v2, Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;

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
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;

    .line 68
    .line 69
    return-object p0
.end method

.method public final getSharableDiffUrl()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-wide v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-wide v3, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 24
    .line 25
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 26
    .line 27
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v6, "diff="

    .line 32
    .line 33
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "&oldid="

    .line 40
    .line 41
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "&variant="

    .line 48
    .line 49
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Lorg/wikipedia/page/PageTitle;->getWebApiUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public final getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

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
    const p0, 0x7f0e0009

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
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c018f

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v3, 0x7f09006a

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v7, v4

    .line 26
    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout;

    .line 27
    .line 28
    if-eqz v7, :cond_1

    .line 29
    .line 30
    const v3, 0x7f090081

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    const v3, 0x7f090082

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    const v3, 0x7f090083

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    move-object v9, v4

    .line 58
    check-cast v9, Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v9, :cond_1

    .line 61
    .line 62
    const v3, 0x7f09015b

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    move-object v10, v4

    .line 70
    check-cast v10, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 71
    .line 72
    if-eqz v10, :cond_1

    .line 73
    .line 74
    const v3, 0x7f090170

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Landroid/widget/LinearLayout;

    .line 82
    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    move-object v6, v1

    .line 86
    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 87
    .line 88
    const v3, 0x7f0901be

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    .line 96
    .line 97
    if-eqz v4, :cond_1

    .line 98
    .line 99
    const v3, 0x7f0901bf

    .line 100
    .line 101
    .line 102
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    move-object v11, v4

    .line 107
    check-cast v11, Landroid/widget/TextView;

    .line 108
    .line 109
    if-eqz v11, :cond_1

    .line 110
    .line 111
    const v3, 0x7f0901c0

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    if-eqz v12, :cond_1

    .line 119
    .line 120
    const v3, 0x7f0901c3

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    move-object v13, v4

    .line 128
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    .line 130
    if-eqz v13, :cond_1

    .line 131
    .line 132
    const v3, 0x7f0901c5

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    move-object v14, v4

    .line 140
    check-cast v14, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    if-eqz v14, :cond_1

    .line 143
    .line 144
    const v3, 0x7f0901c6

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Landroid/widget/TextView;

    .line 152
    .line 153
    if-eqz v4, :cond_1

    .line 154
    .line 155
    const v3, 0x7f09021f

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    move-object v15, v4

    .line 163
    check-cast v15, Lorg/wikipedia/views/WikiErrorView;

    .line 164
    .line 165
    if-eqz v15, :cond_1

    .line 166
    .line 167
    const v3, 0x7f090278

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v16

    .line 174
    if-eqz v16, :cond_1

    .line 175
    .line 176
    const v3, 0x7f090292

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    check-cast v4, Landroidx/constraintlayout/widget/Guideline;

    .line 184
    .line 185
    if-eqz v4, :cond_1

    .line 186
    .line 187
    const v3, 0x7f09043c

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    move-object/from16 v17, v4

    .line 195
    .line 196
    check-cast v17, Landroid/widget/LinearLayout;

    .line 197
    .line 198
    if-eqz v17, :cond_1

    .line 199
    .line 200
    const v3, 0x7f090454

    .line 201
    .line 202
    .line 203
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    move-object/from16 v18, v4

    .line 208
    .line 209
    check-cast v18, Landroid/widget/ImageView;

    .line 210
    .line 211
    if-eqz v18, :cond_1

    .line 212
    .line 213
    const v3, 0x7f090486

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    move-object/from16 v19, v4

    .line 221
    .line 222
    check-cast v19, Landroid/widget/ImageView;

    .line 223
    .line 224
    if-eqz v19, :cond_1

    .line 225
    .line 226
    const v3, 0x7f0904a6

    .line 227
    .line 228
    .line 229
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    move-object/from16 v20, v4

    .line 234
    .line 235
    check-cast v20, Lcom/google/android/material/button/MaterialButton;

    .line 236
    .line 237
    if-eqz v20, :cond_1

    .line 238
    .line 239
    const v3, 0x7f0904a7

    .line 240
    .line 241
    .line 242
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    move-object/from16 v21, v4

    .line 247
    .line 248
    check-cast v21, Lcom/google/android/material/button/MaterialButton;

    .line 249
    .line 250
    if-eqz v21, :cond_1

    .line 251
    .line 252
    const v3, 0x7f0904b9

    .line 253
    .line 254
    .line 255
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v22

    .line 259
    if-eqz v22, :cond_1

    .line 260
    .line 261
    const v3, 0x7f0904ba

    .line 262
    .line 263
    .line 264
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v23

    .line 268
    if-eqz v23, :cond_1

    .line 269
    .line 270
    const v3, 0x7f0904bb

    .line 271
    .line 272
    .line 273
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v24

    .line 277
    if-eqz v24, :cond_1

    .line 278
    .line 279
    const v3, 0x7f0904bc

    .line 280
    .line 281
    .line 282
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    check-cast v4, Landroidx/constraintlayout/widget/Guideline;

    .line 287
    .line 288
    if-eqz v4, :cond_1

    .line 289
    .line 290
    const v3, 0x7f0904bd

    .line 291
    .line 292
    .line 293
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    move-object/from16 v25, v4

    .line 298
    .line 299
    check-cast v25, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 300
    .line 301
    if-eqz v25, :cond_1

    .line 302
    .line 303
    const v3, 0x7f0904be

    .line 304
    .line 305
    .line 306
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    move-object/from16 v26, v4

    .line 311
    .line 312
    check-cast v26, Landroid/widget/TextView;

    .line 313
    .line 314
    if-eqz v26, :cond_1

    .line 315
    .line 316
    const v3, 0x7f0904bf

    .line 317
    .line 318
    .line 319
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    check-cast v4, Landroid/widget/TextView;

    .line 324
    .line 325
    if-eqz v4, :cond_1

    .line 326
    .line 327
    const v3, 0x7f0904c0

    .line 328
    .line 329
    .line 330
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    move-object/from16 v27, v4

    .line 335
    .line 336
    check-cast v27, Landroid/widget/TextView;

    .line 337
    .line 338
    if-eqz v27, :cond_1

    .line 339
    .line 340
    const v3, 0x7f0904c1

    .line 341
    .line 342
    .line 343
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    check-cast v4, Landroid/widget/TextView;

    .line 348
    .line 349
    if-eqz v4, :cond_1

    .line 350
    .line 351
    const v3, 0x7f090513

    .line 352
    .line 353
    .line 354
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    move-object/from16 v28, v4

    .line 359
    .line 360
    check-cast v28, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 361
    .line 362
    if-eqz v28, :cond_1

    .line 363
    .line 364
    const v3, 0x7f09058e

    .line 365
    .line 366
    .line 367
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    move-object/from16 v29, v4

    .line 372
    .line 373
    check-cast v29, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 374
    .line 375
    if-eqz v29, :cond_1

    .line 376
    .line 377
    const v3, 0x7f09058f

    .line 378
    .line 379
    .line 380
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    move-object/from16 v30, v4

    .line 385
    .line 386
    check-cast v30, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 387
    .line 388
    if-eqz v30, :cond_1

    .line 389
    .line 390
    const v3, 0x7f090590

    .line 391
    .line 392
    .line 393
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    move-object/from16 v31, v4

    .line 398
    .line 399
    check-cast v31, Landroid/widget/TextView;

    .line 400
    .line 401
    if-eqz v31, :cond_1

    .line 402
    .line 403
    const v3, 0x7f090591

    .line 404
    .line 405
    .line 406
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    check-cast v4, Landroid/widget/TextView;

    .line 411
    .line 412
    if-eqz v4, :cond_1

    .line 413
    .line 414
    const v3, 0x7f090592

    .line 415
    .line 416
    .line 417
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    move-object/from16 v32, v4

    .line 422
    .line 423
    check-cast v32, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 424
    .line 425
    if-eqz v32, :cond_1

    .line 426
    .line 427
    const v3, 0x7f090593

    .line 428
    .line 429
    .line 430
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    move-object/from16 v33, v4

    .line 435
    .line 436
    check-cast v33, Landroid/widget/TextView;

    .line 437
    .line 438
    if-eqz v33, :cond_1

    .line 439
    .line 440
    const v3, 0x7f090594

    .line 441
    .line 442
    .line 443
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    check-cast v4, Landroid/widget/TextView;

    .line 448
    .line 449
    if-eqz v4, :cond_1

    .line 450
    .line 451
    const v3, 0x7f09066b

    .line 452
    .line 453
    .line 454
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    move-object/from16 v34, v4

    .line 459
    .line 460
    check-cast v34, Landroid/widget/FrameLayout;

    .line 461
    .line 462
    if-eqz v34, :cond_1

    .line 463
    .line 464
    const v3, 0x7f090671

    .line 465
    .line 466
    .line 467
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    check-cast v4, Landroid/widget/ImageView;

    .line 472
    .line 473
    if-eqz v4, :cond_1

    .line 474
    .line 475
    const v3, 0x7f0906ae

    .line 476
    .line 477
    .line 478
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    move-object/from16 v35, v4

    .line 483
    .line 484
    check-cast v35, Landroid/widget/FrameLayout;

    .line 485
    .line 486
    if-eqz v35, :cond_1

    .line 487
    .line 488
    const v3, 0x7f0906b0

    .line 489
    .line 490
    .line 491
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    move-object/from16 v36, v4

    .line 496
    .line 497
    check-cast v36, Landroid/widget/ImageView;

    .line 498
    .line 499
    if-eqz v36, :cond_1

    .line 500
    .line 501
    const v3, 0x7f0906b3

    .line 502
    .line 503
    .line 504
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 505
    .line 506
    .line 507
    move-result-object v37

    .line 508
    if-eqz v37, :cond_1

    .line 509
    .line 510
    const v3, 0x7f0906f1

    .line 511
    .line 512
    .line 513
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    move-object/from16 v38, v4

    .line 518
    .line 519
    check-cast v38, Landroid/widget/FrameLayout;

    .line 520
    .line 521
    if-eqz v38, :cond_1

    .line 522
    .line 523
    const v3, 0x7f0906f3

    .line 524
    .line 525
    .line 526
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    check-cast v4, Landroid/widget/ImageView;

    .line 531
    .line 532
    if-eqz v4, :cond_1

    .line 533
    .line 534
    const v3, 0x7f0906f5

    .line 535
    .line 536
    .line 537
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    move-object/from16 v39, v4

    .line 542
    .line 543
    check-cast v39, Landroid/widget/TextView;

    .line 544
    .line 545
    if-eqz v39, :cond_1

    .line 546
    .line 547
    const v3, 0x7f0906f6

    .line 548
    .line 549
    .line 550
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    check-cast v4, Landroidx/constraintlayout/helper/widget/Flow;

    .line 555
    .line 556
    if-eqz v4, :cond_1

    .line 557
    .line 558
    const v3, 0x7f090707

    .line 559
    .line 560
    .line 561
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    move-object/from16 v40, v4

    .line 566
    .line 567
    check-cast v40, Lcom/google/android/material/button/MaterialButton;

    .line 568
    .line 569
    if-eqz v40, :cond_1

    .line 570
    .line 571
    const v3, 0x7f090708

    .line 572
    .line 573
    .line 574
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    move-object/from16 v41, v4

    .line 579
    .line 580
    check-cast v41, Lcom/google/android/material/button/MaterialButton;

    .line 581
    .line 582
    if-eqz v41, :cond_1

    .line 583
    .line 584
    const v3, 0x7f090753

    .line 585
    .line 586
    .line 587
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    move-object/from16 v42, v4

    .line 592
    .line 593
    check-cast v42, Landroid/widget/FrameLayout;

    .line 594
    .line 595
    if-eqz v42, :cond_1

    .line 596
    .line 597
    const v3, 0x7f090755

    .line 598
    .line 599
    .line 600
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    move-object/from16 v43, v4

    .line 605
    .line 606
    check-cast v43, Landroid/widget/ImageView;

    .line 607
    .line 608
    if-eqz v43, :cond_1

    .line 609
    .line 610
    const v3, 0x7f090757

    .line 611
    .line 612
    .line 613
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 614
    .line 615
    .line 616
    move-result-object v4

    .line 617
    move-object/from16 v44, v4

    .line 618
    .line 619
    check-cast v44, Landroid/widget/TextView;

    .line 620
    .line 621
    if-eqz v44, :cond_1

    .line 622
    .line 623
    new-instance v5, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 624
    .line 625
    invoke-direct/range {v5 .. v44}, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/widget/TextView;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/TextView;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Lorg/wikipedia/views/WikiErrorView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/wikipedia/views/GoneIfEmptyTextView;Landroid/widget/TextView;Lorg/wikipedia/views/GoneIfEmptyTextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 626
    .line 627
    .line 628
    iput-object v5, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 629
    .line 630
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 631
    .line 632
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 633
    .line 634
    .line 635
    const/4 v3, 0x1

    .line 636
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v13, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 640
    .line 641
    .line 642
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 643
    .line 644
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->newerIdButton:Landroid/widget/ImageView;

    .line 648
    .line 649
    iget-object v4, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 650
    .line 651
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->olderIdButton:Landroid/widget/ImageView;

    .line 655
    .line 656
    const/4 v5, 0x2

    .line 657
    new-array v6, v5, [Landroid/view/View;

    .line 658
    .line 659
    aput-object v1, v6, v2

    .line 660
    .line 661
    aput-object v4, v6, v3

    .line 662
    .line 663
    :goto_0
    if-ge v2, v5, :cond_0

    .line 664
    .line 665
    aget-object v1, v6, v2

    .line 666
    .line 667
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    invoke-static {v1, v3}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 672
    .line 673
    .line 674
    add-int/lit8 v2, v2, 0x1

    .line 675
    .line 676
    goto :goto_0

    .line 677
    :cond_0
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 678
    .line 679
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    return-object v0

    .line 688
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    const-string v1, "Missing required view with ID: "

    .line 697
    .line 698
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    const/4 v0, 0x0

    .line 706
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->actionBarOffsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sequentialTooltipRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 30
    .line 31
    return-void
.end method

.method public final onExpiryChanged(Lorg/wikipedia/watchlist/WatchlistExpiry;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/wikipedia/watchlist/WatchlistExpiry;->getExpiry()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, " "

    .line 6
    .line 7
    const-string v2, "_"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "expiry_"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "pt_watchlist"

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, v1

    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->updateWatchButton(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showFeedbackOptionsDialog(Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

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
    const v0, 0x7f0903ed

    .line 9
    .line 10
    .line 11
    const-string v1, "pt_edit"

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    const-string/jumbo p1, "top_menu_share_click"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v1, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getSharableDiffUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p1, v0, p0}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v3

    .line 56
    :cond_0
    const v0, 0x7f09039d

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    if-ne p1, v0, :cond_2

    .line 61
    .line 62
    const-string/jumbo p1, "top_menu_copy_click"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v1, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getSharableDiffUrl()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-class v1, Landroid/content/ClipboardManager;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/content/ClipboardManager;

    .line 83
    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    invoke-static {v4, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    const p1, 0x7f12007a

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p0}, Lorg/wikipedia/util/ShareUtil;->showMessage(ILandroidx/fragment/app/Fragment;)V

    .line 97
    .line 98
    .line 99
    return v3

    .line 100
    :cond_2
    const v0, 0x7f090402

    .line 101
    .line 102
    .line 103
    if-ne p1, v0, :cond_3

    .line 104
    .line 105
    const-string/jumbo p1, "top_menu_history_click"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1, v1, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 122
    .line 123
    invoke-static {p1, v0}, Lokio/Options$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 128
    .line 129
    .line 130
    return v3

    .line 131
    :cond_3
    const v0, 0x7f0903ba

    .line 132
    .line 133
    .line 134
    if-ne p1, v0, :cond_4

    .line 135
    .line 136
    const-string/jumbo p1, "top_menu_learn_click"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1, v1, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const p1, 0x7f12007e

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 164
    .line 165
    .line 166
    return v3

    .line 167
    :cond_4
    const v0, 0x7f0903e1

    .line 168
    .line 169
    .line 170
    if-ne p1, v0, :cond_5

    .line 171
    .line 172
    const-string/jumbo p1, "top_menu_feedback_click"

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1, v1, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v3}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->showFeedbackOptionsDialog(Z)V

    .line 179
    .line 180
    .line 181
    return v3

    .line 182
    :cond_5
    const v0, 0x7f0903e7

    .line 183
    .line 184
    .line 185
    if-ne p1, v0, :cond_6

    .line 186
    .line 187
    const-string p1, "diff_saved_init"

    .line 188
    .line 189
    const-string v0, "pt_warning_messages"

    .line 190
    .line 191
    invoke-virtual {p0, p1, v0, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    new-instance v5, Lorg/wikipedia/page/PageTitle;

    .line 195
    .line 196
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 201
    .line 202
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 203
    .line 204
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {p1}, Lorg/wikipedia/staticdata/UserTalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 215
    .line 216
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 225
    .line 226
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 227
    .line 228
    invoke-direct {v5, p1, v0, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    sget v0, Lorg/wikipedia/talk/template/TalkTemplatesActivity;->$r8$clinit:I

    .line 236
    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    const-wide/16 v8, 0x0

    .line 242
    .line 243
    const/16 v10, 0x18

    .line 244
    .line 245
    const-wide/16 v6, 0x0

    .line 246
    .line 247
    invoke-static/range {v4 .. v10}, Lokio/Path$Companion;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;JJI)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 252
    .line 253
    .line 254
    return v3

    .line 255
    :cond_6
    const/4 p0, 0x0

    .line 256
    return p0
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f090402

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-boolean v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0903e1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-boolean v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 32
    .line 33
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0903ba

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-boolean v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 48
    .line 49
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0903e7

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget-boolean p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 64
    .line 65
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->articleTitleView:Landroid/widget/TextView;

    .line 10
    .line 11
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->newerIdButton:Landroid/widget/ImageView;

    .line 26
    .line 27
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->olderIdButton:Landroid/widget/ImageView;

    .line 42
    .line 43
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->usernameFromButton:Lcom/google/android/material/button/MaterialButton;

    .line 58
    .line 59
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 60
    .line 61
    const/4 v4, 0x4

    .line 62
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->usernameToButton:Lcom/google/android/material/button/MaterialButton;

    .line 74
    .line 75
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 76
    .line 77
    const/4 v5, 0x5

    .line 78
    invoke-direct {v0, p0, v5}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->thankButton:Landroid/widget/FrameLayout;

    .line 90
    .line 91
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 92
    .line 93
    const/4 v6, 0x6

    .line 94
    invoke-direct {v0, p0, v6}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->undoButton:Landroid/widget/FrameLayout;

    .line 106
    .line 107
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 108
    .line 109
    const/4 v7, 0x7

    .line 110
    invoke-direct {v0, p0, v7}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->watchButton:Landroid/widget/FrameLayout;

    .line 122
    .line 123
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 124
    .line 125
    const/16 v8, 0x8

    .line 126
    .line 127
    invoke-direct {v0, p0, v8}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->updateWatchButton(Z)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->talkButton:Landroid/widget/FrameLayout;

    .line 143
    .line 144
    new-instance v9, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 145
    .line 146
    const/16 v10, 0x9

    .line 147
    .line 148
    invoke-direct {v9, p0, v10}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 160
    .line 161
    new-instance v9, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;

    .line 162
    .line 163
    const/16 v10, 0xa

    .line 164
    .line 165
    invoke-direct {v9, p0, v10}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v9}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->setLoadingState()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 183
    .line 184
    invoke-virtual {v0, p0, v9, v10}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 185
    .line 186
    .line 187
    if-nez p2, :cond_0

    .line 188
    .line 189
    sget-object p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 190
    .line 191
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 196
    .line 197
    const-string v9, "other"

    .line 198
    .line 199
    const-string v10, "init"

    .line 200
    .line 201
    invoke-static {p2, v0, v10, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 202
    .line 203
    .line 204
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    iget-boolean p2, p2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 209
    .line 210
    if-nez p2, :cond_2

    .line 211
    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    if-eqz p2, :cond_1

    .line 221
    .line 222
    const v0, 0x7f12082b

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p2, v0}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    :cond_1
    iget-object p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 233
    .line 234
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->articleTitleView:Landroid/widget/TextView;

    .line 238
    .line 239
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 240
    .line 241
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 246
    .line 247
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    iget-object p2, p2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->watchedStatus:Landroidx/lifecycle/MutableLiveData;

    .line 263
    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    new-instance v9, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;

    .line 269
    .line 270
    invoke-direct {v9, p0, p1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 271
    .line 272
    .line 273
    new-instance p1, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 274
    .line 275
    invoke-direct {p1, v9, v1}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2, v0, p1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionDetails:Landroidx/lifecycle/MutableLiveData;

    .line 286
    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;

    .line 292
    .line 293
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 294
    .line 295
    .line 296
    new-instance v4, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 297
    .line 298
    invoke-direct {v4, v0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, p2, v4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->singleRevisionText:Landroidx/lifecycle/MutableLiveData;

    .line 309
    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;

    .line 315
    .line 316
    invoke-direct {v0, p0, v5}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 317
    .line 318
    .line 319
    new-instance v4, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 320
    .line 321
    invoke-direct {v4, v0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, p2, v4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->thankStatus:Lorg/wikipedia/util/SingleLiveData;

    .line 332
    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;

    .line 338
    .line 339
    invoke-direct {v0, p0, v6}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 340
    .line 341
    .line 342
    new-instance v4, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 343
    .line 344
    invoke-direct {v4, v0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1, p2, v4}, Lorg/wikipedia/util/SingleLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->watchResponse:Lorg/wikipedia/util/SingleLiveData;

    .line 355
    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;

    .line 361
    .line 362
    invoke-direct {v0, p0, v7}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 363
    .line 364
    .line 365
    new-instance v4, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 366
    .line 367
    invoke-direct {v4, v0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, p2, v4}, Lorg/wikipedia/util/SingleLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->undoEditResponse:Lorg/wikipedia/util/SingleLiveData;

    .line 378
    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;

    .line 384
    .line 385
    invoke-direct {v0, p0, v8}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 386
    .line 387
    .line 388
    new-instance v4, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 389
    .line 390
    invoke-direct {v4, v0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, p2, v4}, Lorg/wikipedia/util/SingleLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->rollbackRights:Landroidx/lifecycle/MutableLiveData;

    .line 401
    .line 402
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;

    .line 407
    .line 408
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 409
    .line 410
    .line 411
    new-instance v4, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 412
    .line 413
    invoke-direct {v4, v0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1, p2, v4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->rollbackResponse:Lorg/wikipedia/util/SingleLiveData;

    .line 424
    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 426
    .line 427
    .line 428
    move-result-object p2

    .line 429
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;

    .line 430
    .line 431
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 432
    .line 433
    .line 434
    new-instance v2, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 435
    .line 436
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1, p2, v2}, Lorg/wikipedia/util/SingleLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->diffText:Landroidx/lifecycle/MutableLiveData;

    .line 447
    .line 448
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;

    .line 453
    .line 454
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V

    .line 455
    .line 456
    .line 457
    new-instance v2, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 458
    .line 459
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1, p2, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 470
    .line 471
    .line 472
    move-result-object p2

    .line 473
    iget-object p2, p2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 474
    .line 475
    iget-object p2, p2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 476
    .line 477
    iget-object p2, p2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 478
    .line 479
    invoke-static {p1, p2}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 483
    .line 484
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 488
    .line 489
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->actionBarOffsetChangedListener:Lorg/wikipedia/feed/news/NewsFragment$$ExternalSyntheticLambda0;

    .line 490
    .line 491
    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 492
    .line 493
    .line 494
    return-void
.end method

.method public final sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 10
    .line 11
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 12
    .line 13
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 14
    .line 15
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 20
    .line 21
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string v6, "app_patroller_experience"

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    move-object v2, p2

    .line 29
    move-object v3, p3

    .line 30
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final setEnableDisableTint(Landroid/widget/ImageView;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const p2, 0x7f0402dd

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const p2, 0x7f04054f

    .line 16
    .line 17
    .line 18
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {p0, p2, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_1
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget p0, v1, Landroid/util/TypedValue;->resourceId:I

    .line 39
    .line 40
    invoke-static {v0, p0}, Lorg/wikipedia/util/FileUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    const-string p0, "Attribute not found; ID="

    .line 49
    .line 50
    invoke-static {p2, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final setErrorState(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 10
    .line 11
    sget v1, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionDetailsView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final setLoadingState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->revisionDetailsView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->navTabContainer:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->diffUnavailableContainer:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->thankButton:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->undoButton:Landroid/widget/FrameLayout;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->olderIdButton:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->newerIdButton:Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final showFeedbackOptionsDialog(Z)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 12
    .line 13
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShowOneTimeRecentEditsFeedbackForm()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 22
    .line 23
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getShowOneTimeRecentEditsFeedbackForm()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const-string p1, "pt_feedback"

    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    const-string v1, "toolbar_first_feedback"

    .line 34
    .line 35
    invoke-virtual {p0, v1, p1, v0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS_RECENT_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v2, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 61
    .line 62
    const v3, 0x7f12092a

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 73
    .line 74
    const v3, 0x7f120921

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 85
    .line 86
    check-cast v2, Lorg/wikipedia/views/PlainPasteEditText;

    .line 87
    .line 88
    new-instance v3, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-direct {v3, v4, v1}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;

    .line 98
    .line 99
    invoke-direct {v2, v0, p0, p1, v4}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Landroid/widget/RadioButton;

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayHeadings:Landroid/view/View;

    .line 110
    .line 111
    check-cast p1, Landroid/widget/RadioButton;

    .line 112
    .line 113
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 117
    .line 118
    check-cast p1, Landroid/widget/RadioButton;

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 124
    .line 125
    check-cast p1, Landroid/widget/Button;

    .line 126
    .line 127
    new-instance v3, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    const/4 v5, 0x7

    .line 130
    invoke-direct {v3, v5, v0}, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 137
    .line 138
    check-cast p1, Landroid/widget/Button;

    .line 139
    .line 140
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 144
    .line 145
    new-instance v5, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 146
    .line 147
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 148
    .line 149
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    const-string v11, "app_patroller_experience"

    .line 158
    .line 159
    const-string v6, "impression"

    .line 160
    .line 161
    const-string v7, "feedback_form"

    .line 162
    .line 163
    const-string v8, ""

    .line 164
    .line 165
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v5}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 169
    .line 170
    .line 171
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 172
    .line 173
    const v2, 0x7f130007

    .line 174
    .line 175
    .line 176
    invoke-direct {p1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 177
    .line 178
    .line 179
    iget-object p0, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 182
    .line 183
    iput-boolean v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 184
    .line 185
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 186
    .line 187
    check-cast v1, Landroid/widget/ScrollView;

    .line 188
    .line 189
    iput-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 190
    .line 191
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 196
    .line 197
    :cond_2
    :goto_0
    return-void
.end method

.method public final showUndoDialog()V
    .locals 8

    .line 1
    new-instance v0, Lorg/wikipedia/diff/UndoEditDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v2, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS_RECENT_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v3

    .line 20
    :goto_0
    new-instance v4, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;

    .line 21
    .line 22
    invoke-direct {v4, p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v5, 0x7f0c018b

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v5, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const v3, 0x7f0906a1

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lorg/wikipedia/views/PlainPasteEditText;

    .line 48
    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    const v3, 0x7f0906a2

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 59
    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    new-instance v3, Lokhttp3/ConnectionPool;

    .line 63
    .line 64
    check-cast v1, Landroid/widget/ScrollView;

    .line 65
    .line 66
    const/16 v6, 0x1b

    .line 67
    .line 68
    invoke-direct {v3, v6, v1, v5}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iput-object v3, v0, Lorg/wikipedia/diff/UndoEditDialog;->binding:Lokhttp3/ConnectionPool;

    .line 72
    .line 73
    iget-object v3, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 76
    .line 77
    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 78
    .line 79
    new-instance v1, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;

    .line 80
    .line 81
    invoke-direct {v1, v2, v0, v4}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;-><init>(Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/diff/UndoEditDialog;Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda30;)V

    .line 82
    .line 83
    .line 84
    const v3, 0x7f1201bc

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    invoke-direct {v1, v3, v2}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const v3, 0x7f1209ac

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Landroidx/appcompat/widget/SearchView$10;

    .line 103
    .line 104
    const/4 v3, 0x3

    .line 105
    invoke-direct {v1, v3, v0}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lorg/wikipedia/diff/UndoEditDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 112
    .line 113
    if-eqz v1, :cond_1

    .line 114
    .line 115
    iget-object v1, v1, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 116
    .line 117
    iget-object v1, v1, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 118
    .line 119
    if-eqz v1, :cond_1

    .line 120
    .line 121
    invoke-virtual {v1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 122
    .line 123
    .line 124
    :cond_1
    sget-object p0, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS_RECENT_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 125
    .line 126
    if-ne v2, p0, :cond_2

    .line 127
    .line 128
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 129
    .line 130
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 131
    .line 132
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 133
    .line 134
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 139
    .line 140
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    const-string v7, "app_patroller_experience"

    .line 145
    .line 146
    const-string/jumbo v2, "undo_summary_impression"

    .line 147
    .line 148
    .line 149
    const-string v3, "pt_edit"

    .line 150
    .line 151
    const-string v4, ""

    .line 152
    .line 153
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    invoke-virtual {v0}, Lorg/wikipedia/diff/UndoEditDialog;->show()Landroidx/appcompat/app/AlertDialog;

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const-string v0, "Missing required view with ID: "

    .line 172
    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final showUserPopupMenu(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;ZLandroid/view/View;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-object v0, Lorg/wikipedia/talk/UserTalkPopupHelper;->INSTANCE:Lorg/wikipedia/talk/UserTalkPopupHelper;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lorg/wikipedia/page/PageTitle;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v3, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 16
    .line 17
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 18
    .line 19
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v3}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v5, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 32
    .line 33
    iget-object v5, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 34
    .line 35
    invoke-direct {v2, v3, v4, v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v3, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isAnon:Z

    .line 39
    .line 40
    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->DIFF_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 41
    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    iget-wide p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 45
    .line 46
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    move-object v7, p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageId:I

    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const/4 v9, 0x1

    .line 65
    const/16 v6, 0x21

    .line 66
    .line 67
    move-object v4, p3

    .line 68
    invoke-virtual/range {v0 .. v9}, Lorg/wikipedia/talk/UserTalkPopupHelper;->show(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZLandroid/view/View;Lorg/wikipedia/Constants$InvokeSource;ILjava/lang/Long;Ljava/lang/Integer;Z)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public final updateActionButtons()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->undoButton:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    move v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->thankButton:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->thankButton:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    iget-object v4, v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v4, 0x0

    .line 71
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 82
    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    iget-boolean p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->isAnon:Z

    .line 86
    .line 87
    if-nez p0, :cond_2

    .line 88
    .line 89
    move v2, v3

    .line 90
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final updateWatchButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->watchButton:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v1, 0x8

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->watchLabel:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-boolean v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->isWatched:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const v1, 0x7f120400

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const v1, 0x7f120403

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->watchIcon:Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-boolean v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->isWatched:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    const p0, 0x7f0801ea

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget-boolean p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->isWatched:Z

    .line 76
    .line 77
    if-nez p0, :cond_3

    .line 78
    .line 79
    const p0, 0x7f080127

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    const p0, 0x7f080126

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
