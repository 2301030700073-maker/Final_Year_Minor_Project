.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/activity/BaseActivity$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\n\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002\u00b2\u0006\u0012\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "Lorg/wikipedia/activity/BaseActivity$Callback;",
        "<init>",
        "()V",
        "Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;",
        "uiState",
        "Lorg/wikipedia/util/Resource;",
        "",
        "resetUiState",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public currentRecommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

.field public final recommendedReadingListInterestsLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final recommendedReadingListSourceLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 13
    .line 14
    sget-object v4, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    invoke-direct {v6, p0, v7}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v4, v0, v6}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 53
    .line 54
    iput-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->recommendedReadingListSourceLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 55
    .line 56
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 57
    .line 58
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 71
    .line 72
    iput-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->recommendedReadingListInterestsLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lorg/wikipedia/activity/BaseActivity;->callback:Lorg/wikipedia/activity/BaseActivity$Callback;

    .line 5
    .line 6
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Landroidx/paging/HintHandler;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v2, 0x23

    .line 29
    .line 30
    if-lt v0, v2, :cond_0

    .line 31
    .line 32
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 33
    .line 34
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v2, 0x1e

    .line 39
    .line 40
    if-lt v0, v2, :cond_1

    .line 41
    .line 42
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 43
    .line 44
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 v2, 0x1a

    .line 49
    .line 50
    if-lt v0, v2, :cond_2

    .line 51
    .line 52
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 53
    .line 54
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 59
    .line 60
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 64
    .line 65
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 70
    .line 71
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const/4 v1, 0x1

    .line 76
    xor-int/2addr p1, v1

    .line 77
    invoke-virtual {v0, p1}, Lcoil3/util/UtilsKt;->setAppearanceLightStatusBars(Z)V

    .line 78
    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    const/16 v10, 0x1fc

    .line 82
    .line 83
    const-string v2, "impression"

    .line 84
    .line 85
    const-string v3, "discover_settings"

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    const/4 v8, 0x0

    .line 92
    invoke-static/range {v2 .. v10}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;

    .line 96
    .line 97
    const/4 v0, 0x4

    .line 98
    invoke-direct {p1, v0, p0}, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 102
    .line 103
    const v2, 0x61e5a910

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final onPermissionResult(Lorg/wikipedia/activity/BaseActivity;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->scheduleRecommendedReadingListNotification(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->toggleNotification(Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->toggleNotification(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final requestPermissionAndScheduleRecommendedReadingNotification()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->scheduleRecommendedReadingListNotification(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, v2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->toggleNotification(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/activity/BaseActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v0, v1}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-static {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->scheduleRecommendedReadingListNotification(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0, v2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->toggleNotification(Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
