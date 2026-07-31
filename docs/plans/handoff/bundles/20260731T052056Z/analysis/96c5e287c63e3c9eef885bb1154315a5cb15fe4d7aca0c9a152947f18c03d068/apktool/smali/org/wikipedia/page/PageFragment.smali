.class public final Lorg/wikipedia/page/PageFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/BackPressedHandler;
.implements Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;
.implements Lorg/wikipedia/theme/ThemeChooserDialog$Callback;
.implements Lorg/wikipedia/page/references/ReferenceDialog$Callback;
.implements Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0005\t\n\u000b\u000c\nB\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/wikipedia/page/PageFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/wikipedia/BackPressedHandler;",
        "Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;",
        "Lorg/wikipedia/theme/ThemeChooserDialog$Callback;",
        "Lorg/wikipedia/page/references/ReferenceDialog$Callback;",
        "Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;",
        "<init>",
        "()V",
        "Callback",
        "AvCallback",
        "WebViewScrollTriggerListener",
        "FindReferenceInPageActionProvider",
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
.field public static final REFRESH_SPINNER_ADDITIONAL_OFFSET:I


# instance fields
.field public _binding:Lcom/google/gson/GsonBuilder;

.field public final activeTimer:Lorg/wikipedia/util/ActiveTimer;

.field public final app:Lorg/wikipedia/WikipediaApp;

.field public articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

.field public avCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

.field public avPlayer:Lorg/wikipedia/media/AvPlayer;

.field public bottomBarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

.field public bridge:Lorg/wikipedia/bridge/CommunicationBridge;

.field public campaignDialog:Lorg/wikipedia/page/campaign/CampaignDialog;

.field public final donationReminderLauncher:Landroidx/fragment/app/Fragment$10;

.field public editHandler:Lorg/wikipedia/edit/EditHandler;

.field public errorState:Z

.field public leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

.field public linkHandler:Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;

.field public final model:Lorg/wikipedia/page/PageViewModel;

.field public final pageActionItemCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

.field public pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

.field public final pageRefreshListener:Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;

.field public pageRefreshed:Z

.field public references:Lorg/wikipedia/page/references/PageReferences;

.field public revision:J

.field public final scrollTriggerListener:Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

.field public scrolledUpForThemeChange:Z

.field public shareHandler:Lorg/wikipedia/page/shareafact/ShareHandler;

.field public sidePanelHandler:Lorg/wikipedia/page/SidePanelHandler;

.field public webView:Lorg/wikipedia/views/ObservableWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    const/high16 v1, 0x41800000    # 16.0f

    .line 24
    .line 25
    mul-float/2addr v1, v0

    .line 26
    float-to-int v0, v1

    .line 27
    sput v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

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
    new-instance v1, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->donationReminderLauncher:Landroidx/fragment/app/Fragment$10;

    .line 22
    .line 23
    new-instance v0, Lorg/wikipedia/util/ActiveTimer;

    .line 24
    .line 25
    invoke-direct {v0}, Lorg/wikipedia/util/ActiveTimer;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->activeTimer:Lorg/wikipedia/util/ActiveTimer;

    .line 29
    .line 30
    new-instance v0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->scrollTriggerListener:Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

    .line 36
    .line 37
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageRefreshListener:Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;

    .line 43
    .line 44
    new-instance v0, Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lorg/wikipedia/page/PageFragment$AvCallback;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageActionItemCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 50
    .line 51
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 52
    .line 53
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 58
    .line 59
    new-instance v0, Lorg/wikipedia/page/PageViewModel;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 65
    .line 66
    return-void
.end method

.method public static refreshPage$default(Lorg/wikipedia/page/PageFragment;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    iget-boolean v3, v1, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget-boolean v1, v1, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :cond_0
    move-object v5, p0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v1, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v6, v1

    .line 22
    check-cast v6, Lorg/wikipedia/page/PageTitle;

    .line 23
    .line 24
    if-eqz v6, :cond_3

    .line 25
    .line 26
    iget-object v1, v0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v7, v1

    .line 29
    check-cast v7, Lorg/wikipedia/history/HistoryEntry;

    .line 30
    .line 31
    if-eqz v7, :cond_3

    .line 32
    .line 33
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 41
    .line 42
    const/16 v3, 0x8

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lorg/wikipedia/page/PageActionTabLayout;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    move v5, v4

    .line 61
    :goto_0
    if-ge v5, v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iput-boolean v4, p0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    .line 77
    .line 78
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    .line 79
    .line 80
    const/4 v2, 0x4

    .line 81
    invoke-direct {v1, v2, v6}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, v0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 85
    .line 86
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 87
    .line 88
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    move-object v5, p0

    .line 95
    invoke-virtual/range {v5 .. v10}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZIZ)V

    .line 96
    .line 97
    .line 98
    :cond_3
    return-void

    .line 99
    :goto_1
    iget-object p0, v5, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 107
    .line 108
    invoke-virtual {p0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_4
    const-string p0, "bridge"

    .line 113
    .line 114
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v2
.end method


# virtual methods
.method public final addTimeSpentReading(I)V
    .locals 13

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/history/HistoryEntry;

    .line 6
    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 14
    .line 15
    new-instance v2, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 16
    .line 17
    const/16 v3, 0x10

    .line 18
    .line 19
    invoke-direct {v2, v1, v3}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-direct {v1, p0, p1, v4, v3}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x2

    .line 30
    invoke-static {v0, v2, v4, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 31
    .line 32
    .line 33
    sget p0, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 34
    .line 35
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->isEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    sget p0, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 42
    .line 43
    if-ge p1, p0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 47
    .line 48
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-boolean p0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    iget-wide p0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->setupTimestamp:J

    .line 57
    .line 58
    const-wide/16 v1, 0x0

    .line 59
    .line 60
    cmp-long p0, p0, v1

    .line 61
    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    iget p0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 65
    .line 66
    if-lez p0, :cond_2

    .line 67
    .line 68
    iget p1, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleVisit:I

    .line 69
    .line 70
    add-int/lit8 v6, p1, 0x1

    .line 71
    .line 72
    if-lt v6, p0, :cond_1

    .line 73
    .line 74
    iget p0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->goalReachedCount:I

    .line 75
    .line 76
    add-int/lit8 v11, p0, 0x1

    .line 77
    .line 78
    const/16 v12, 0x37

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    const-wide/16 v2, 0x0

    .line 82
    .line 83
    const-wide/16 v4, 0x0

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x1

    .line 89
    const/4 v10, 0x0

    .line 90
    invoke-static/range {v0 .. v12}, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;ZJJIIFZIII)Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setDonationReminderConfig(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_1
    const/4 v11, 0x0

    .line 99
    const/16 v12, 0x1f7

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    const-wide/16 v2, 0x0

    .line 103
    .line 104
    const-wide/16 v4, 0x0

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    const/4 v9, 0x0

    .line 109
    const/4 v10, 0x0

    .line 110
    invoke-static/range {v0 .. v12}, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->copy$default(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;ZJJIIFZIII)Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setDonationReminderConfig(Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_0
    return-void
.end method

.method public final callback()Lorg/wikipedia/page/PageFragment$Callback;
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
    const-class v2, Lorg/wikipedia/page/PageFragment$Callback;

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
    check-cast p0, Lorg/wikipedia/page/PageFragment$Callback;

    .line 68
    .line 69
    return-object p0
.end method

.method public final dismissBottomSheet()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "bottom_sheet_fragment"

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-boolean v1, v0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move-object v0, v2

    .line 30
    :goto_1
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_5

    .line 40
    .line 41
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    move-object v2, p0

    .line 63
    check-cast v2, Landroidx/fragment/app/DialogFragment;

    .line 64
    .line 65
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 68
    .line 69
    .line 70
    :cond_5
    return-void
.end method

.method public final getCurrentTab()Lorg/wikipedia/page/tabs/Tab;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/page/tabs/Tab;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getLeadImageEditLang()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    iget-boolean v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionIsTranslation:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    return-object v0

    .line 41
    :cond_2
    const-string p0, "leadImagesHandler"

    .line 42
    .line 43
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public final getLinkHandler()Lorg/wikipedia/page/LinkHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->linkHandler:Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "linkHandler"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getMessageCardHeight()I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getDonationReminderCardViewHeight(Z)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const-string p0, "leadImagesHandler"

    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0
.end method

.method public final getModel()Lorg/wikipedia/page/PageViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReferencesGroup()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/page/references/PageReferences;->referencesGroup:Ljava/util/List;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final getSelectedReferenceIndex()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lorg/wikipedia/page/references/PageReferences;->selectedIndex:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final getSidePanelHandler()Lorg/wikipedia/page/SidePanelHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->sidePanelHandler:Lorg/wikipedia/page/SidePanelHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "sidePanelHandler"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getToolbarMargin()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final bridge synthetic getWebView()Lorg/wikipedia/views/ObservableWebView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getWebView$1()Lorg/wikipedia/views/ObservableWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string/jumbo p0, "webView"

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final goToMainActivity(Lorg/wikipedia/navtab/NavTab;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/wikipedia/main/MainActivity;->$r8$clinit:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lorg/wikipedia/util/UriUtil;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/high16 v1, 0x4000000

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "returnToMain"

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const-string v1, "goToMainTab"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final isPreview()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZIZ)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lorg/wikipedia/page/PageActivity;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lorg/wikipedia/page/PageActivity;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iget-boolean v1, v0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v1, "bottom_sheet_fragment"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    move-object v0, v2

    .line 57
    :goto_1
    instance-of v0, v0, Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->dismissBottomSheet()V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lokio/Okio__JvmOkioKt;->schedulePollNotificationJob(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    sput-object v2, Lorg/wikipedia/util/TabUtil;->PAGEVIEW_ID:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->activeTimer:Lorg/wikipedia/util/ActiveTimer;

    .line 80
    .line 81
    iget-boolean v1, v0, Lorg/wikipedia/util/ActiveTimer;->isPaused:Z

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    iget-wide v3, v0, Lorg/wikipedia/util/ActiveTimer;->pauseMillis:J

    .line 86
    .line 87
    :goto_2
    iget-wide v5, v0, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    .line 88
    .line 89
    sub-long/2addr v3, v5

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    goto :goto_2

    .line 96
    :goto_3
    const-wide/16 v5, 0x3e8

    .line 97
    .line 98
    div-long/2addr v3, v5

    .line 99
    long-to-int v1, v3

    .line 100
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment;->addTimeSpentReading(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    iput-wide v3, v0, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    .line 108
    .line 109
    iput-wide v3, v0, Lorg/wikipedia/util/ActiveTimer;->pauseMillis:J

    .line 110
    .line 111
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/4 v1, 0x0

    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    check-cast v0, Lorg/wikipedia/page/PageActivity;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageActivity;->onPageSetToolbarElevationEnabled(Z)V

    .line 121
    .line 122
    .line 123
    :cond_6
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getSidePanelHandler()Lorg/wikipedia/page/SidePanelHandler;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/SidePanelHandler;->setEnabled(Z)V

    .line 128
    .line 129
    .line 130
    iput-boolean v1, p0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    .line 131
    .line 132
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 140
    .line 141
    const/16 v3, 0x8

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 147
    .line 148
    iput-object p1, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object p2, v0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v2, v0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v2, v0, Lorg/wikipedia/page/PageViewModel;->readingListPage:Ljava/lang/Object;

    .line 155
    .line 156
    iput-boolean p5, v0, Lorg/wikipedia/page/PageViewModel;->forceNetwork:Z

    .line 157
    .line 158
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Lorg/wikipedia/page/PageActionTabLayout;

    .line 173
    .line 174
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p1, Lorg/wikipedia/page/PageActionTabLayout;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    :goto_4
    if-ge v1, p2, :cond_7

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_7
    const/4 p1, 0x1

    .line 206
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 207
    .line 208
    .line 209
    iput-boolean p5, p0, Lorg/wikipedia/page/PageFragment;->pageRefreshed:Z

    .line 210
    .line 211
    iput-object v2, p0, Lorg/wikipedia/page/PageFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    .line 212
    .line 213
    const-wide/16 v0, 0x0

    .line 214
    .line 215
    iput-wide v0, p0, Lorg/wikipedia/page/PageFragment;->revision:J

    .line 216
    .line 217
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 218
    .line 219
    if-eqz p2, :cond_b

    .line 220
    .line 221
    iget-object p5, p2, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p5, Lorg/wikipedia/page/PageViewModel;

    .line 224
    .line 225
    if-eqz p3, :cond_9

    .line 226
    .line 227
    iget-object p3, p5, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p3, Lorg/wikipedia/page/PageTitle;

    .line 230
    .line 231
    if-eqz p3, :cond_9

    .line 232
    .line 233
    iget-object p3, p5, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast p3, Lorg/wikipedia/history/HistoryEntry;

    .line 236
    .line 237
    if-eqz p3, :cond_9

    .line 238
    .line 239
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->updateCurrentBackStackItem()V

    .line 240
    .line 241
    .line 242
    iget-object p3, p2, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast p3, Lorg/wikipedia/page/tabs/Tab;

    .line 245
    .line 246
    new-instance v0, Lorg/wikipedia/page/PageBackStackItem;

    .line 247
    .line 248
    iget-object v1, p5, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    iget-object p5, p5, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast p5, Lorg/wikipedia/history/HistoryEntry;

    .line 258
    .line 259
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-direct {v0, v1, p5}, Lorg/wikipedia/page/PageBackStackItem;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    .line 263
    .line 264
    .line 265
    iget-object p5, p3, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 266
    .line 267
    :goto_5
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-virtual {p3}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    add-int/2addr v3, p1

    .line 276
    if-le v1, v3, :cond_8

    .line 277
    .line 278
    invoke-virtual {p3}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    add-int/2addr v1, p1

    .line 283
    invoke-interface {p5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_8
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 291
    .line 292
    .line 293
    move-result p5

    .line 294
    sub-int/2addr p5, p1

    .line 295
    iput p5, p3, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    .line 296
    .line 297
    :cond_9
    iget-object p1, p2, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast p1, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 300
    .line 301
    if-eqz p1, :cond_a

    .line 302
    .line 303
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->isActive()Z

    .line 304
    .line 305
    .line 306
    move-result p3

    .line 307
    if-eqz p3, :cond_a

    .line 308
    .line 309
    invoke-virtual {p1, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 310
    .line 311
    .line 312
    :cond_a
    iget-object p1, p2, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast p1, Lorg/wikipedia/page/PageFragment;

    .line 315
    .line 316
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    new-instance p3, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 321
    .line 322
    invoke-direct {p3, p2}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lcom/google/gson/GsonBuilder;)V

    .line 323
    .line 324
    .line 325
    new-instance p5, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;

    .line 326
    .line 327
    invoke-direct {p5, p2, v2}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3;-><init>(Lcom/google/gson/GsonBuilder;Lkotlin/coroutines/Continuation;)V

    .line 328
    .line 329
    .line 330
    const/4 v0, 0x2

    .line 331
    invoke-static {p1, p3, v2, p5, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    iput-object p1, p2, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 336
    .line 337
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->scrollTriggerListener:Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

    .line 338
    .line 339
    iput p4, p0, Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;->stagedScrollY:I

    .line 340
    .line 341
    return-void

    .line 342
    :cond_b
    const-string p0, "pageFragmentLoadState"

    .line 343
    .line 344
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v2
.end method

.method public final loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZZZ)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v0

    .line 349
    iget-object v0, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 350
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 351
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v0

    .line 352
    iget-object v0, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 353
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageBackStackItem;

    .line 354
    iget-object v0, v0, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    .line 355
    invoke-virtual {p1, v0}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 357
    iget-object p2, p2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    check-cast p2, Lorg/wikipedia/page/Page;

    if-eqz p2, :cond_3

    if-eqz p5, :cond_0

    goto :goto_1

    .line 358
    :cond_0
    iget-object p2, p1, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 359
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->scrollToSection(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 362
    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->loadFromBackStack()V

    return-void

    :cond_4
    const-string p0, "pageFragmentLoadState"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    if-eqz p4, :cond_6

    .line 363
    iget-object p4, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p4}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 364
    iget-object p4, p4, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 365
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/wikipedia/page/tabs/Tab;

    .line 366
    iget-object v0, p4, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 367
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 368
    iput v0, p4, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    :cond_6
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p5

    .line 369
    invoke-virtual/range {v1 .. v6}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZIZ)V

    return-void
.end method

.method public final onBackPressed()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "back"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getSidePanelHandler()Lorg/wikipedia/page/SidePanelHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lorg/wikipedia/page/SidePanelHandler;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 15
    .line 16
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 19
    .line 20
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getSidePanelHandler()Lorg/wikipedia/page/SidePanelHandler;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lorg/wikipedia/page/SidePanelHandler;->hide()V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lorg/wikipedia/page/tabs/Tab;

    .line 49
    .line 50
    invoke-virtual {v2}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-lez v2, :cond_3

    .line 55
    .line 56
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Lorg/wikipedia/page/tabs/Tab;

    .line 59
    .line 60
    invoke-virtual {v2}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-lez v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    add-int/lit8 v3, v3, -0x1

    .line 71
    .line 72
    iput v3, v2, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    .line 73
    .line 74
    :cond_2
    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Lorg/wikipedia/page/tabs/Tab;

    .line 77
    .line 78
    iget-object v2, v2, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->loadFromBackStack()V

    .line 87
    .line 88
    .line 89
    return v1

    .line 90
    :cond_3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 91
    .line 92
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    sub-int/2addr v2, v1

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->commitTabState()V

    .line 111
    .line 112
    .line 113
    :cond_4
    const/4 p0, 0x0

    .line 114
    return p0

    .line 115
    :cond_5
    const-string p0, "pageFragmentLoadState"

    .line 116
    .line 117
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 p0, 0x0

    .line 121
    throw p0
.end method

.method public final onCancelThemeChooser()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/page/PageFragment;->scrolledUpForThemeChange:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v1, 0x0

    .line 18
    filled-new-array {p0, v1}, [I

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "scrollY"

    .line 23
    .line 24
    invoke-static {v0, v1, p0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-wide/16 v0, 0xfa

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 6
    .line 7
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean v1, p1, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-boolean p1, p1, Lorg/wikipedia/bridge/CommunicationBridge;->isPcsReady:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean p1, p0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->loadLeadImage()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lorg/wikipedia/bridge/CommunicationBridge;

    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTopMargin()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    add-int/lit8 p1, p1, 0x10

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "pcs.c1.Page.setMargins({ top:\'"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, "px\', bottom:\'48px\' })"

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    const-string p0, "pageFragmentLoadState"

    .line 70
    .line 71
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_2
    :goto_0
    return-void

    .line 76
    :cond_3
    const-string p0, "bridge"

    .line 77
    .line 78
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c01a1

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f090273

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const p2, 0x7f0904c5

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v4, v0

    .line 31
    check-cast v4, Landroid/widget/FrameLayout;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const p2, 0x7f0904c6

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v5, v0

    .line 43
    check-cast v5, Lorg/wikipedia/page/PageActionTabLayout;

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    const p2, 0x7f0904c9

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    const p2, 0x7f0904cb

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object v6, v0

    .line 66
    check-cast v6, Lorg/wikipedia/views/WikiErrorView;

    .line 67
    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    const p2, 0x7f0904ce

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v7, v0

    .line 78
    check-cast v7, Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 79
    .line 80
    if-eqz v7, :cond_1

    .line 81
    .line 82
    const p2, 0x7f0904d0

    .line 83
    .line 84
    .line 85
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v8, v0

    .line 90
    check-cast v8, Landroid/widget/ImageView;

    .line 91
    .line 92
    if-eqz v8, :cond_1

    .line 93
    .line 94
    move-object v3, p1

    .line 95
    check-cast v3, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 96
    .line 97
    const p2, 0x7f0904ef

    .line 98
    .line 99
    .line 100
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    move-object v10, v0

    .line 105
    check-cast v10, Lorg/wikipedia/views/ObservableWebView;

    .line 106
    .line 107
    if-eqz v10, :cond_1

    .line 108
    .line 109
    new-instance v2, Lcom/google/gson/GsonBuilder;

    .line 110
    .line 111
    move-object v9, v3

    .line 112
    invoke-direct/range {v2 .. v10}, Lcom/google/gson/GsonBuilder;-><init>(Lorg/wikipedia/views/WikiSwipeRefreshLayout;Landroid/widget/FrameLayout;Lorg/wikipedia/page/PageActionTabLayout;Lorg/wikipedia/views/WikiErrorView;Lorg/wikipedia/page/leadimages/PageHeaderView;Landroid/widget/ImageView;Lorg/wikipedia/views/WikiSwipeRefreshLayout;Lorg/wikipedia/views/ObservableWebView;)V

    .line 113
    .line 114
    .line 115
    iput-object v2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 116
    .line 117
    iput-object v10, p0, Lorg/wikipedia/page/PageFragment;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 118
    .line 119
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-instance p2, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda19;

    .line 124
    .line 125
    invoke-direct {p2, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda19;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p1, Lorg/wikipedia/views/ObservableWebView;->onUpOrCancelMotionEventListeners:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->scrollTriggerListener:Lorg/wikipedia/page/PageFragment$WebViewScrollTriggerListener;

    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object p1, p1, Lorg/wikipedia/views/ObservableWebView;->onContentHeightChangedListeners:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance p2, Lorg/wikipedia/page/PageFragment$initWebViewListeners$2;

    .line 152
    .line 153
    invoke-direct {p2, p0}, Lorg/wikipedia/page/PageFragment$initWebViewListeners$2;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 167
    .line 168
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiSwipeRefreshLayout;->setScrollableChild(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 183
    .line 184
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->pageRefreshListener:Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1}, Lokio/Okio__OkioKt;->getToolbarHeightPx(Landroid/content/Context;)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    int-to-float p1, p1

    .line 198
    invoke-static {p1}, Lokio/Okio__OkioKt;->roundedPxToDp(F)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    int-to-float p1, p1

    .line 203
    invoke-static {p1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    sget p2, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 208
    .line 209
    add-int/2addr p1, p2

    .line 210
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 211
    .line 212
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    iget-object p2, p2, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p2, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 218
    .line 219
    neg-int v0, p1

    .line 220
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iput v0, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 224
    .line 225
    iput p1, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 226
    .line 227
    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 229
    .line 230
    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset$1()V

    .line 231
    .line 232
    .line 233
    iput-boolean v1, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 234
    .line 235
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast p1, Lorg/wikipedia/page/PageActionTabLayout;

    .line 243
    .line 244
    iget-object p2, p0, Lorg/wikipedia/page/PageFragment;->pageActionItemCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageActionTabLayout;->setCallback(Lorg/wikipedia/page/action/PageActionItem$Callback;)V

    .line 247
    .line 248
    .line 249
    if-eqz p3, :cond_0

    .line 250
    .line 251
    const-string p1, "themeChangeScrolled"

    .line 252
    .line 253
    invoke-virtual {p3, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    iput-boolean p1, p0, Lorg/wikipedia/page/PageFragment;->scrolledUpForThemeChange:Z

    .line 258
    .line 259
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 260
    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast p0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 267
    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    return-object p0

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    const-string p1, "Missing required view with ID: "

    .line 281
    .line 282
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const/4 p0, 0x0

    .line 290
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/wikipedia/media/AvPlayer;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/media/MediaPlayer;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->cleanup()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getSidePanelHandler()Lorg/wikipedia/page/SidePanelHandler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/wikipedia/page/SidePanelHandler;->log()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v2, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->handlerJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iput-object v1, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 45
    .line 46
    iput-object v1, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    iput-boolean v2, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionIsTranslation:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lorg/wikipedia/views/ObservableWebView;->clearAllListeners()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    check-cast v0, Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 79
    .line 80
    const v0, 0x7f120688

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    const-string p0, "leadImagesHandler"

    .line 93
    .line 94
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :cond_3
    const-string p0, "bridge"

    .line 99
    .line 100
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v1
.end method

.method public final onEditingPrefsChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onExpiryChanged(Lorg/wikipedia/watchlist/WatchlistExpiry;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    check-cast v0, Lorg/wikipedia/page/PageActivity;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 14
    .line 15
    sget-object v1, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iput-boolean p1, v0, Lorg/wikipedia/page/PageViewModel;->hasWatchlistExpiry:Z

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const-string p0, "pageFragment"

    .line 26
    .line 27
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    throw p0

    .line 32
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->dismissBottomSheet()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onPageLoadError(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 13
    .line 14
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 17
    .line 18
    if-eqz v0, :cond_c

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 34
    .line 35
    .line 36
    iget-boolean v2, p0, Lorg/wikipedia/page/PageFragment;->pageRefreshed:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iput-boolean v1, p0, Lorg/wikipedia/page/PageFragment;->pageRefreshed:Z

    .line 41
    .line 42
    :cond_1
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-eqz v2, :cond_b

    .line 46
    .line 47
    iget-object v2, v2, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 48
    .line 49
    const/16 v4, 0x8

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 55
    .line 56
    const-string v4, "bridge"

    .line 57
    .line 58
    if-eqz v2, :cond_a

    .line 59
    .line 60
    iget-object v2, v2, Lorg/wikipedia/bridge/CommunicationBridge;->communicationBridgeListener:Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;

    .line 61
    .line 62
    invoke-interface {v2}, Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;->getWebView()Lorg/wikipedia/views/ObservableWebView;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v5, "about:blank"

    .line 67
    .line 68
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v5, 0x4

    .line 76
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 80
    .line 81
    if-eqz v2, :cond_9

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    iput-boolean v3, v2, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 85
    .line 86
    invoke-virtual {v2}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 112
    .line 113
    invoke-virtual {v2, p1, v0}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 136
    .line 137
    invoke-virtual {v2}, Lorg/wikipedia/views/WikiErrorView;->getContentTopOffset()Landroid/widget/Space;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .line 147
    invoke-static {v4}, Lokio/Okio__OkioKt;->getToolbarHeightPx(Landroid/content/Context;)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    int-to-float v4, v4

    .line 152
    invoke-static {v4}, Lokio/Okio__OkioKt;->roundedPxToDp(F)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    int-to-float v4, v4

    .line 157
    invoke-static {v4}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    const/4 v6, -0x1

    .line 162
    invoke-direct {v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 176
    .line 177
    invoke-virtual {v2}, Lorg/wikipedia/views/WikiErrorView;->getContentTopOffset()Landroid/widget/Space;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 192
    .line 193
    invoke-virtual {v2}, Lorg/wikipedia/views/WikiErrorView;->getTabLayoutOffset()Landroid/widget/Space;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    .line 199
    iget-object v5, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    iget-object v5, v5, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v5, Lorg/wikipedia/page/PageActionTabLayout;

    .line 207
    .line 208
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 226
    .line 227
    invoke-virtual {v2}, Lorg/wikipedia/views/WikiErrorView;->getTabLayoutOffset()Landroid/widget/Space;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    instance-of v2, p1, Ljava/net/UnknownHostException;

    .line 235
    .line 236
    if-nez v2, :cond_4

    .line 237
    .line 238
    instance-of v2, p1, Ljava/net/SocketException;

    .line 239
    .line 240
    if-eqz v2, :cond_3

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_3
    move v2, v1

    .line 244
    goto :goto_1

    .line 245
    :cond_4
    :goto_0
    move v2, v3

    .line 246
    :goto_1
    iget-object v4, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    iget-object v4, v4, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v4, Lorg/wikipedia/page/PageActionTabLayout;

    .line 254
    .line 255
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    move v5, v1

    .line 260
    :goto_2
    if-ge v5, v4, :cond_6

    .line 261
    .line 262
    if-nez v2, :cond_5

    .line 263
    .line 264
    iget-object v6, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 265
    .line 266
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    iget-object v6, v6, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v6, Lorg/wikipedia/page/PageActionTabLayout;

    .line 272
    .line 273
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    if-eqz v6, :cond_5

    .line 278
    .line 279
    new-instance v7, Lorg/wikipedia/views/ConfigurableTabLayout$DisabledTag;

    .line 280
    .line 281
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_6
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v2, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 298
    .line 299
    instance-of v4, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 300
    .line 301
    if-eqz v4, :cond_7

    .line 302
    .line 303
    check-cast p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 304
    .line 305
    iget p1, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 306
    .line 307
    const/16 v4, 0x194

    .line 308
    .line 309
    if-ne p1, v4, :cond_7

    .line 310
    .line 311
    move v1, v3

    .line 312
    :cond_7
    xor-int/lit8 p1, v1, 0x1

    .line 313
    .line 314
    invoke-virtual {v2, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 315
    .line 316
    .line 317
    iput-boolean v3, p0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    .line 318
    .line 319
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    if-eqz p0, :cond_c

    .line 324
    .line 325
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 326
    .line 327
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    if-eqz p1, :cond_8

    .line 332
    .line 333
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {p1, v0}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    :cond_8
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->removeTransitionAnimState()V

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v3

    .line 348
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v3

    .line 352
    :cond_b
    const-string p0, "leadImagesHandler"

    .line 353
    .line 354
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v3

    .line 358
    :cond_c
    :goto_3
    return-void
.end method

.method public final onPageMetadataLoaded(Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->updateQuickActionsAndMenuOptions()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 9
    .line 10
    iget-object v3, v2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v3, Lorg/wikipedia/page/Page;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v4, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 18
    .line 19
    iget-object v5, v2, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    iget-object v5, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v5, v6

    .line 36
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v3, v3, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 40
    .line 41
    iget v3, v3, Lorg/wikipedia/page/PageProperties;->pageId:I

    .line 42
    .line 43
    invoke-direct {v4, v3, v5}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;-><init>(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v4, v0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 47
    .line 48
    iget-object v3, v0, Lorg/wikipedia/page/PageFragment;->editHandler:Lorg/wikipedia/edit/EditHandler;

    .line 49
    .line 50
    const-string v4, "editHandler"

    .line 51
    .line 52
    if-eqz v3, :cond_19

    .line 53
    .line 54
    iget-object v5, v2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Lorg/wikipedia/page/Page;

    .line 57
    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    iput-object v5, v3, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    .line 61
    .line 62
    :cond_2
    iget-object v3, v0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v3, v3, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v3, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 70
    .line 71
    const/4 v5, 0x1

    .line 72
    invoke-virtual {v3, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v3, v3, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    invoke-virtual {v3, v7}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 93
    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-array v8, v5, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object p1, v8, v7

    .line 104
    .line 105
    const v9, 0x7f12081e

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v9, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    const/4 v9, -0x1

    .line 116
    invoke-static {v3, v8, v9}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v3, v2, Lorg/wikipedia/page/PageViewModel;->readingListPage:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 122
    .line 123
    const/4 v8, 0x2

    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    iget-object v9, v2, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v9, Lorg/wikipedia/page/PageTitle;

    .line 129
    .line 130
    if-eqz v9, :cond_4

    .line 131
    .line 132
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    new-instance v11, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 137
    .line 138
    const/16 v12, 0x12

    .line 139
    .line 140
    invoke-direct {v11, v1, v12}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 141
    .line 142
    .line 143
    new-instance v12, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 144
    .line 145
    const/16 v13, 0x16

    .line 146
    .line 147
    invoke-direct {v12, v3, v9, v6, v13}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 148
    .line 149
    .line 150
    invoke-static {v10, v11, v6, v12, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 151
    .line 152
    .line 153
    :cond_4
    iget-boolean v3, v0, Lorg/wikipedia/page/PageFragment;->errorState:Z

    .line 154
    .line 155
    if-nez v3, :cond_7

    .line 156
    .line 157
    iget-object v3, v0, Lorg/wikipedia/page/PageFragment;->editHandler:Lorg/wikipedia/edit/EditHandler;

    .line 158
    .line 159
    if-eqz v3, :cond_6

    .line 160
    .line 161
    iget-object v4, v2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v4, Lorg/wikipedia/page/Page;

    .line 164
    .line 165
    if-eqz v4, :cond_5

    .line 166
    .line 167
    iput-object v4, v3, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    .line 168
    .line 169
    :cond_5
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v6

    .line 181
    :cond_7
    :goto_1
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 182
    .line 183
    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 184
    .line 185
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-nez v3, :cond_8

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_8
    iget-object v3, v2, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 197
    .line 198
    if-eqz v3, :cond_9

    .line 199
    .line 200
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 201
    .line 202
    const v4, 0x7f1205cf

    .line 203
    .line 204
    .line 205
    const-wide/16 v9, 0x0

    .line 206
    .line 207
    invoke-static {v9, v10, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 208
    .line 209
    .line 210
    move-result-wide v9

    .line 211
    invoke-static {v9, v10}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-static {v4, v9}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    new-array v9, v7, [Ljava/lang/Object;

    .line 224
    .line 225
    sget-object v10, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 226
    .line 227
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    const v11, 0x7f12069f

    .line 236
    .line 237
    .line 238
    invoke-static {v9, v7, v10, v11}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    invoke-static {v10, v7, v9, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    if-eqz v9, :cond_9

    .line 251
    .line 252
    invoke-virtual {v4}, Lj$/time/Duration;->toDays()J

    .line 253
    .line 254
    .line 255
    move-result-wide v9

    .line 256
    const-wide/16 v11, 0x1

    .line 257
    .line 258
    cmp-long v4, v9, v11

    .line 259
    .line 260
    if-ltz v4, :cond_9

    .line 261
    .line 262
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    new-instance v9, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 267
    .line 268
    const/16 v10, 0x11

    .line 269
    .line 270
    invoke-direct {v9, v1, v10}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 271
    .line 272
    .line 273
    new-instance v1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 274
    .line 275
    const/16 v10, 0x15

    .line 276
    .line 277
    invoke-direct {v1, v0, v3, v6, v10}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 278
    .line 279
    .line 280
    invoke-static {v4, v9, v6, v1, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 281
    .line 282
    .line 283
    :cond_9
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 288
    .line 289
    iget-object v4, v2, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 292
    .line 293
    if-eqz v4, :cond_a

    .line 294
    .line 295
    iget-object v4, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 296
    .line 297
    if-nez v4, :cond_b

    .line 298
    .line 299
    :cond_a
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 300
    .line 301
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    sget-object v9, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 313
    .line 314
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    invoke-virtual {v9}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    sget-object v10, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 323
    .line 324
    new-array v10, v7, [Ljava/lang/Object;

    .line 325
    .line 326
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 327
    .line 328
    .line 329
    move-result-object v11

    .line 330
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    const v12, 0x7f120631

    .line 335
    .line 336
    .line 337
    invoke-static {v10, v7, v11, v12}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v10

    .line 341
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 342
    .line 343
    .line 344
    move-result-object v11

    .line 345
    invoke-static {v11, v7, v10, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 346
    .line 347
    .line 348
    move-result v10

    .line 349
    if-nez v10, :cond_d

    .line 350
    .line 351
    sget-object v10, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 352
    .line 353
    iget-object v9, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 354
    .line 355
    filled-new-array {v9}, [Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    invoke-virtual {v10, v9}, Lorg/wikipedia/games/WikiGames;->isLangSupported([Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    if-eqz v9, :cond_d

    .line 364
    .line 365
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 366
    .line 367
    filled-new-array {v4}, [Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v10, v4}, Lorg/wikipedia/games/WikiGames;->isLangSupported([Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-eqz v4, :cond_d

    .line 376
    .line 377
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    .line 378
    .line 379
    if-ne v3, v4, :cond_c

    .line 380
    .line 381
    const v3, 0x7f1205ff

    .line 382
    .line 383
    .line 384
    invoke-static {v3, v7}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    if-lt v3, v8, :cond_d

    .line 389
    .line 390
    :cond_c
    invoke-static {v12, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 391
    .line 392
    .line 393
    const/4 v15, 0x0

    .line 394
    const/16 v13, 0x3fc

    .line 395
    .line 396
    const/4 v14, 0x0

    .line 397
    const-string v16, "impression"

    .line 398
    .line 399
    const-string v17, "game_modal"

    .line 400
    .line 401
    const/16 v18, 0x0

    .line 402
    .line 403
    const/16 v19, 0x0

    .line 404
    .line 405
    const/16 v20, 0x0

    .line 406
    .line 407
    invoke-static/range {v13 .. v20}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    const v4, 0x7f0c0183

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    new-instance v4, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 422
    .line 423
    invoke-direct {v4, v1, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 424
    .line 425
    .line 426
    iget-object v8, v4, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v8, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 429
    .line 430
    iput-object v3, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 431
    .line 432
    iput-boolean v7, v8, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 433
    .line 434
    invoke-virtual {v4}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    const v8, 0x7f090504

    .line 439
    .line 440
    .line 441
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 442
    .line 443
    .line 444
    move-result-object v8

    .line 445
    check-cast v8, Landroid/widget/Button;

    .line 446
    .line 447
    new-instance v9, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;

    .line 448
    .line 449
    invoke-direct {v9, v1, v4, v7}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/app/AlertDialog;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    .line 454
    .line 455
    const v8, 0x7f090155

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    check-cast v3, Landroid/widget/ImageView;

    .line 463
    .line 464
    new-instance v8, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;

    .line 465
    .line 466
    invoke-direct {v8, v1, v4, v5}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/app/AlertDialog;I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    .line 471
    .line 472
    :cond_d
    iget-object v1, v0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 473
    .line 474
    const-string v3, "bridge"

    .line 475
    .line 476
    if-eqz v1, :cond_18

    .line 477
    .line 478
    iput-boolean v5, v1, Lorg/wikipedia/bridge/CommunicationBridge;->isMetadataReady:Z

    .line 479
    .line 480
    invoke-virtual {v1}, Lorg/wikipedia/bridge/CommunicationBridge;->flushMessages()V

    .line 481
    .line 482
    .line 483
    iget-object v1, v0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 484
    .line 485
    if-eqz v1, :cond_17

    .line 486
    .line 487
    iget-object v4, v0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 488
    .line 489
    if-eqz v4, :cond_16

    .line 490
    .line 491
    invoke-virtual {v4}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getTopMargin()I

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    add-int/lit8 v4, v4, 0x10

    .line 496
    .line 497
    new-instance v8, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    const-string v9, "pcs.c1.Page.setMargins({ top:\'"

    .line 500
    .line 501
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const-string v4, "px\', bottom:\'48px\' })"

    .line 508
    .line 509
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    invoke-virtual {v1, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iget-object v0, v0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 520
    .line 521
    if-eqz v0, :cond_15

    .line 522
    .line 523
    iget-object v1, v2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v1, Lorg/wikipedia/page/Page;

    .line 526
    .line 527
    const-string v3, ""

    .line 528
    .line 529
    if-nez v1, :cond_e

    .line 530
    .line 531
    goto/16 :goto_6

    .line 532
    .line 533
    :cond_e
    iget-object v1, v1, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    .line 534
    .line 535
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    sget-object v4, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 540
    .line 541
    if-eq v1, v4, :cond_f

    .line 542
    .line 543
    move v1, v5

    .line 544
    goto :goto_3

    .line 545
    :cond_f
    move v1, v7

    .line 546
    :goto_3
    iget-object v4, v2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 547
    .line 548
    check-cast v4, Lorg/wikipedia/page/Page;

    .line 549
    .line 550
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    iget-object v4, v4, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 554
    .line 555
    iget-object v4, v4, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 556
    .line 557
    if-eqz v4, :cond_10

    .line 558
    .line 559
    goto :goto_4

    .line 560
    :cond_10
    move v5, v7

    .line 561
    :goto_4
    new-instance v4, Ljava/util/Date;

    .line 562
    .line 563
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 567
    .line 568
    .line 569
    move-result-wide v6

    .line 570
    iget-object v4, v2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v4, Lorg/wikipedia/page/Page;

    .line 573
    .line 574
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    iget-object v4, v4, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 578
    .line 579
    iget-object v4, v4, Lorg/wikipedia/page/PageProperties;->lastModified:Ljava/util/Date;

    .line 580
    .line 581
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 582
    .line 583
    .line 584
    move-result-wide v8

    .line 585
    sub-long/2addr v6, v8

    .line 586
    const-wide/32 v8, 0x5265c00

    .line 587
    .line 588
    .line 589
    div-long/2addr v6, v8

    .line 590
    iget-object v2, v2, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 593
    .line 594
    if-eqz v2, :cond_11

    .line 595
    .line 596
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 597
    .line 598
    if-eqz v2, :cond_11

    .line 599
    .line 600
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 601
    .line 602
    if-nez v2, :cond_12

    .line 603
    .line 604
    :cond_11
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    :cond_12
    if-eqz v1, :cond_13

    .line 613
    .line 614
    const-string v1, "pcs.c1.Footer.MenuItemType.talkPage, "

    .line 615
    .line 616
    goto :goto_5

    .line 617
    :cond_13
    move-object v1, v3

    .line 618
    :goto_5
    if-eqz v5, :cond_14

    .line 619
    .line 620
    const-string v3, "pcs.c1.Footer.MenuItemType.coordinate, "

    .line 621
    .line 622
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 623
    .line 624
    const-string v5, "pcs.c1.Footer.add({   platform: \"android\",   clientVersion: \"r/50598-r-2026-07-13\",   menu: {       items: [pcs.c1.Footer.MenuItemType.lastEdited, "

    .line 625
    .line 626
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const-string v1, "pcs.c1.Footer.MenuItemType.pageIssues,                pcs.c1.Footer.MenuItemType.referenceList               ],       fragment: \"pcs-menu\",       editedDaysAgo: "

    .line 636
    .line 637
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const-string v1, "   },   readMore: {        itemCount: 3,       readMoreLazy: true,       langCode: \""

    .line 644
    .line 645
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    const-string v1, "\",       fragment: \"pcs-read-more\"   }})"

    .line 652
    .line 653
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    :goto_6
    invoke-virtual {v0, v3}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    return-void

    .line 664
    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    throw v6

    .line 668
    :cond_16
    const-string v0, "leadImagesHandler"

    .line 669
    .line 670
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    throw v6

    .line 674
    :cond_17
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    throw v6

    .line 678
    :cond_18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    throw v6

    .line 682
    :cond_19
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    throw v6
.end method

.method public final onPageSetupEvent()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const-string v2, "bridge"

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    new-instance v3, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-direct {v3, v4, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string v4, "pcs.c1.Page.getRevision();"

    .line 33
    .line 34
    invoke-virtual {v0, v4, v3}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v3, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    invoke-direct {v3, v4, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const-string v4, "pcs.c1.Page.getTableOfContents()"

    .line 48
    .line 49
    invoke-virtual {v0, v4, v3}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    new-instance v1, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;

    .line 57
    .line 58
    const/4 v2, 0x3

    .line 59
    invoke-direct {v1, v2, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-string p0, "pcs.c1.Page.getProtection()"

    .line 63
    .line 64
    invoke-virtual {v0, p0, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1
.end method

.method public final onPause()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    const-string v3, "(function() {var elements = document.getElementsByTagName(\'audio\');for(i=0; i<elements.length; i++) elements[i].pause();})();"

    .line 10
    .line 11
    invoke-virtual {v1, v3}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lorg/wikipedia/media/AvPlayer;

    .line 21
    .line 22
    iget-object v1, v1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Landroid/media/MediaPlayer;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v1, v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->avPlayer:Lorg/wikipedia/media/AvPlayer;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v1, v1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lorg/wikipedia/media/AvPlayer;

    .line 39
    .line 40
    iget-object v1, v1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Landroid/media/MediaPlayer;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 45
    .line 46
    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment;->updateProgressBar(Z)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->activeTimer:Lorg/wikipedia/util/ActiveTimer;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    iput-wide v3, v1, Lorg/wikipedia/util/ActiveTimer;->pauseMillis:J

    .line 61
    .line 62
    iput-boolean v0, v1, Lorg/wikipedia/util/ActiveTimer;->isPaused:Z

    .line 63
    .line 64
    iget-wide v5, v1, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    .line 65
    .line 66
    sub-long/2addr v3, v5

    .line 67
    const-wide/16 v5, 0x3e8

    .line 68
    .line 69
    div-long/2addr v3, v5

    .line 70
    long-to-int v1, v3

    .line 71
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragment;->addTimeSpentReading(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 75
    .line 76
    const-string v3, "pageFragmentLoadState"

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->updateCurrentBackStackItem()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 84
    .line 85
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->commitTabState()V

    .line 86
    .line 87
    .line 88
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-lt v1, v0, :cond_3

    .line 95
    .line 96
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    .line 103
    .line 104
    iget-object v0, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v2

    .line 121
    :cond_3
    const-wide/16 v0, 0x0

    .line 122
    .line 123
    :goto_0
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 124
    .line 125
    const v2, 0x7f12063b

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 129
    .line 130
    .line 131
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 132
    .line 133
    if-eqz p0, :cond_4

    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    iput-wide v0, p0, Lorg/wikipedia/analytics/eventplatform/TimedEvent;->pauseTime:J

    .line 140
    .line 141
    :cond_4
    return-void

    .line 142
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v2

    .line 146
    :cond_6
    const-string p0, "bridge"

    .line 147
    .line 148
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v2
.end method

.method public final onRequestEditSection(ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lorg/wikipedia/page/PageActivity;

    .line 9
    .line 10
    iget-object p0, v0, Lorg/wikipedia/page/PageActivity;->requestEditSectionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 11
    .line 12
    sget v1, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 13
    .line 14
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 15
    .line 16
    const/16 v6, 0x1c0

    .line 17
    .line 18
    move v1, p1

    .line 19
    move-object v2, p2

    .line 20
    move-object v3, p3

    .line 21
    move-object v5, p4

    .line 22
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->activeTimer:Lorg/wikipedia/util/ActiveTimer;

    .line 5
    .line 6
    iget-wide v2, v1, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v4

    .line 12
    iget-wide v6, v1, Lorg/wikipedia/util/ActiveTimer;->pauseMillis:J

    .line 13
    .line 14
    sub-long/2addr v4, v6

    .line 15
    add-long/2addr v4, v2

    .line 16
    iput-wide v4, v1, Lorg/wikipedia/util/ActiveTimer;->startMillis:J

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v1, Lorg/wikipedia/util/ActiveTimer;->isPaused:Z

    .line 20
    .line 21
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 22
    .line 23
    invoke-direct {v1, v0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v3, v3, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Landroid/widget/ImageView;

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lorg/wikipedia/page/PageActionTabLayout;

    .line 60
    .line 61
    invoke-virtual {v1}, Lorg/wikipedia/page/PageActionTabLayout;->update()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->updateQuickActionsAndMenuOptions()V

    .line 65
    .line 66
    .line 67
    sget-object v1, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 68
    .line 69
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 70
    .line 71
    iget-object v1, v1, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lorg/wikipedia/page/Page;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    iget-object v1, v1, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 79
    .line 80
    iget-object v1, v1, Lorg/wikipedia/page/PageProperties;->leadImageUrl:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move-object v1, v3

    .line 84
    :goto_0
    if-eqz v1, :cond_2

    .line 85
    .line 86
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    const-string v4, ".gif"

    .line 96
    .line 97
    invoke-static {v1, v4, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-ne v1, v0, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 104
    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->loadLeadImage()V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    const-string p0, "leadImagesHandler"

    .line 112
    .line 113
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v3

    .line 117
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    iget-wide v3, v0, Lorg/wikipedia/analytics/eventplatform/TimedEvent;->pauseTime:J

    .line 122
    .line 123
    const-wide/16 v5, 0x0

    .line 124
    .line 125
    cmp-long v1, v3, v5

    .line 126
    .line 127
    if-lez v1, :cond_3

    .line 128
    .line 129
    iget-wide v3, v0, Lorg/wikipedia/analytics/eventplatform/TimedEvent;->startTime:J

    .line 130
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v7

    .line 135
    iget-wide v9, v0, Lorg/wikipedia/analytics/eventplatform/TimedEvent;->pauseTime:J

    .line 136
    .line 137
    sub-long/2addr v7, v9

    .line 138
    add-long/2addr v7, v3

    .line 139
    iput-wide v7, v0, Lorg/wikipedia/analytics/eventplatform/TimedEvent;->startTime:J

    .line 140
    .line 141
    :cond_3
    iput-wide v5, v0, Lorg/wikipedia/analytics/eventplatform/TimedEvent;->pauseTime:J

    .line 142
    .line 143
    :cond_4
    sget v0, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    sget-boolean v0, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->shouldShowSettingSnackbar:Z

    .line 150
    .line 151
    if-eqz v0, :cond_5

    .line 152
    .line 153
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->thankYouMessageForSettings()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {p0, v0, v2}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 158
    .line 159
    .line 160
    sput-boolean v2, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->shouldShowSettingSnackbar:Z

    .line 161
    .line 162
    :cond_5
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "themeChangeScrolled"

    .line 2
    .line 3
    iget-boolean p0, p0, Lorg/wikipedia/page/PageFragment;->scrolledUpForThemeChange:Z

    .line 4
    .line 5
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onToggleDimImages()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onToggleReadingFocusMode()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/ObservableWebView;->setScrollEventsEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bottomBarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 15
    .line 16
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingFocusModeEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iput-boolean v3, v0, Lorg/wikipedia/page/ViewHideHandler;->enabled:Z

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/wikipedia/page/ViewHideHandler;->ensureDisplayed()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->refreshCallToActionVisibility()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 37
    .line 38
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lorg/wikipedia/page/Page;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v3, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingFocusModeEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    xor-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    iget-object v0, v0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 55
    .line 56
    iget-boolean v0, v0, Lorg/wikipedia/page/PageProperties;->canEdit:Z

    .line 57
    .line 58
    xor-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v5, "pcs.c1.Page.setEditButtons("

    .line 63
    .line 64
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ", "

    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ")"

    .line 79
    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v3, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-string p0, "bridge"

    .line 92
    .line 93
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v2

    .line 97
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 105
    .line 106
    new-instance v2, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda20;

    .line 107
    .line 108
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda20;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 109
    .line 110
    .line 111
    const-wide/16 v3, 0xfa

    .line 112
    .line 113
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_3
    const-string p0, "leadImagesHandler"

    .line 118
    .line 119
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v2

    .line 123
    :cond_4
    const-string p0, "bottomBarHideHandler"

    .line 124
    .line 125
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v2
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast p1, Lorg/wikipedia/page/PageActivity;

    .line 16
    .line 17
    iget-object p1, p1, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iput-object v1, p1, Lorg/wikipedia/page/ViewHideHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 22
    .line 23
    iget-object v2, v1, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Lorg/wikipedia/views/ObservableWebView;->onDownMotionEventListeners:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v2, v1, Lorg/wikipedia/views/ObservableWebView;->onUpOrCancelMotionEventListeners:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Lorg/wikipedia/views/ObservableWebView;->onClickListeners:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string p0, "toolbarHideHandler"

    .line 45
    .line 46
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v2}, Lorg/wikipedia/WikipediaApp;->getFontSize(Z)F

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    float-to-int v1, v1

    .line 66
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v3, Landroid/util/TypedValue;

    .line 78
    .line 79
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const v5, 0x7f0404e7

    .line 87
    .line 88
    .line 89
    const/4 v6, 0x1

    .line 90
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    move-object v3, v0

    .line 98
    :goto_1
    if-eqz v3, :cond_1b

    .line 99
    .line 100
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lorg/wikipedia/bridge/CommunicationBridge;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lorg/wikipedia/bridge/CommunicationBridge;-><init>(Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;)V

    .line 108
    .line 109
    .line 110
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v3, Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;

    .line 117
    .line 118
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;-><init>(Lorg/wikipedia/page/PageFragment;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 119
    .line 120
    .line 121
    iput-object v3, p0, Lorg/wikipedia/page/PageFragment;->linkHandler:Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;

    .line 122
    .line 123
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 124
    .line 125
    const-string v3, "bridge"

    .line 126
    .line 127
    if-eqz v1, :cond_1a

    .line 128
    .line 129
    const-string v4, "link"

    .line 130
    .line 131
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getLinkHandler()Lorg/wikipedia/page/LinkHandler;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v1, v4, v5}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 139
    .line 140
    if-eqz v1, :cond_19

    .line 141
    .line 142
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 143
    .line 144
    invoke-direct {v4, p0, v2}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 145
    .line 146
    .line 147
    const-string v5, "setup"

    .line 148
    .line 149
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 153
    .line 154
    if-eqz v1, :cond_18

    .line 155
    .line 156
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 157
    .line 158
    invoke-direct {v4, p0, v6}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 159
    .line 160
    .line 161
    const-string v5, "final_setup"

    .line 162
    .line 163
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 167
    .line 168
    if-eqz v1, :cond_17

    .line 169
    .line 170
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 171
    .line 172
    const/4 v5, 0x2

    .line 173
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 174
    .line 175
    .line 176
    const-string v5, "reference"

    .line 177
    .line 178
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 182
    .line 183
    if-eqz v1, :cond_16

    .line 184
    .line 185
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 186
    .line 187
    const/4 v5, 0x3

    .line 188
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 189
    .line 190
    .line 191
    const-string v5, "back_link"

    .line 192
    .line 193
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 197
    .line 198
    if-eqz v1, :cond_15

    .line 199
    .line 200
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 201
    .line 202
    const/4 v5, 0x4

    .line 203
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 204
    .line 205
    .line 206
    const-string v5, "scroll_to_anchor"

    .line 207
    .line 208
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 212
    .line 213
    if-eqz v1, :cond_14

    .line 214
    .line 215
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 216
    .line 217
    const/4 v5, 0x5

    .line 218
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 219
    .line 220
    .line 221
    const-string v5, "image"

    .line 222
    .line 223
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 227
    .line 228
    if-eqz v1, :cond_13

    .line 229
    .line 230
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 231
    .line 232
    const/4 v5, 0x6

    .line 233
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 234
    .line 235
    .line 236
    const-string v5, "media"

    .line 237
    .line 238
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 242
    .line 243
    if-eqz v1, :cond_12

    .line 244
    .line 245
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 246
    .line 247
    const/4 v5, 0x7

    .line 248
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 249
    .line 250
    .line 251
    const-string v5, "pronunciation"

    .line 252
    .line 253
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 257
    .line 258
    if-eqz v1, :cond_11

    .line 259
    .line 260
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 261
    .line 262
    const/16 v5, 0x8

    .line 263
    .line 264
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 265
    .line 266
    .line 267
    const-string v5, "footer_item"

    .line 268
    .line 269
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 273
    .line 274
    if-eqz v1, :cond_10

    .line 275
    .line 276
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda18;

    .line 277
    .line 278
    invoke-direct {v4, v2}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda18;-><init>(I)V

    .line 279
    .line 280
    .line 281
    const-string v5, "read_more_titles_retrieved"

    .line 282
    .line 283
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 284
    .line 285
    .line 286
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 287
    .line 288
    if-eqz v1, :cond_f

    .line 289
    .line 290
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 291
    .line 292
    const/16 v5, 0x9

    .line 293
    .line 294
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 295
    .line 296
    .line 297
    const-string/jumbo v5, "view_license"

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 301
    .line 302
    .line 303
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 304
    .line 305
    if-eqz v1, :cond_e

    .line 306
    .line 307
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;

    .line 308
    .line 309
    const/16 v5, 0xa

    .line 310
    .line 311
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda7;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 312
    .line 313
    .line 314
    const-string/jumbo v5, "view_in_browser"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v5, v4}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 318
    .line 319
    .line 320
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 328
    .line 329
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda2;

    .line 330
    .line 331
    invoke-direct {v4, p0, v2}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v4}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    .line 336
    .line 337
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 345
    .line 346
    new-instance v4, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda2;

    .line 347
    .line 348
    invoke-direct {v4, p0, v6}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/page/PageFragment;I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v4}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    .line 353
    .line 354
    new-instance v1, Lorg/wikipedia/page/ViewHideHandler;

    .line 355
    .line 356
    iget-object v4, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 357
    .line 358
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    iget-object v4, v4, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v4, Landroid/widget/FrameLayout;

    .line 364
    .line 365
    new-instance v5, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 366
    .line 367
    const/16 v7, 0x18

    .line 368
    .line 369
    invoke-direct {v5, v7}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 370
    .line 371
    .line 372
    const/16 v7, 0x50

    .line 373
    .line 374
    invoke-direct {v1, v4, v7, v2, v5}, Lorg/wikipedia/page/ViewHideHandler;-><init>(Landroid/view/View;IZLkotlin/jvm/functions/Function0;)V

    .line 375
    .line 376
    .line 377
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->bottomBarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

    .line 378
    .line 379
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    iput-object v2, v1, Lorg/wikipedia/page/ViewHideHandler;->webView:Lorg/wikipedia/views/ObservableWebView;

    .line 384
    .line 385
    iget-object v4, v2, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    iget-object v4, v2, Lorg/wikipedia/views/ObservableWebView;->onDownMotionEventListeners:Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    iget-object v4, v2, Lorg/wikipedia/views/ObservableWebView;->onUpOrCancelMotionEventListeners:Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    iget-object v2, v2, Lorg/wikipedia/views/ObservableWebView;->onClickListeners:Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->bottomBarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

    .line 406
    .line 407
    if-eqz v1, :cond_d

    .line 408
    .line 409
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 410
    .line 411
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingFocusModeEnabled()Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    iput-boolean v2, v1, Lorg/wikipedia/page/ViewHideHandler;->enabled:Z

    .line 416
    .line 417
    if-nez v2, :cond_3

    .line 418
    .line 419
    invoke-virtual {v1}, Lorg/wikipedia/page/ViewHideHandler;->ensureDisplayed()V

    .line 420
    .line 421
    .line 422
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    new-instance v2, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda5;

    .line 427
    .line 428
    invoke-direct {v2, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 429
    .line 430
    .line 431
    iget-object v1, v1, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    new-instance v1, Lorg/wikipedia/edit/EditHandler;

    .line 437
    .line 438
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 439
    .line 440
    if-eqz v2, :cond_c

    .line 441
    .line 442
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/edit/EditHandler;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/bridge/CommunicationBridge;)V

    .line 443
    .line 444
    .line 445
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->editHandler:Lorg/wikipedia/edit/EditHandler;

    .line 446
    .line 447
    new-instance v1, Lorg/wikipedia/page/SidePanelHandler;

    .line 448
    .line 449
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 450
    .line 451
    if-eqz v2, :cond_b

    .line 452
    .line 453
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/page/SidePanelHandler;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/bridge/CommunicationBridge;)V

    .line 454
    .line 455
    .line 456
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->sidePanelHandler:Lorg/wikipedia/page/SidePanelHandler;

    .line 457
    .line 458
    new-instance v1, Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 459
    .line 460
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    iget-object v4, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    iget-object v4, v4, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast v4, Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 472
    .line 473
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    invoke-direct {v1, p0, v2, v4, v5}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/views/ObservableWebView;Lorg/wikipedia/page/leadimages/PageHeaderView;Lorg/wikipedia/page/PageFragment$Callback;)V

    .line 478
    .line 479
    .line 480
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 481
    .line 482
    new-instance v1, Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 483
    .line 484
    iget-object v2, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 485
    .line 486
    if-eqz v2, :cond_a

    .line 487
    .line 488
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/page/shareafact/ShareHandler;-><init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/bridge/CommunicationBridge;)V

    .line 489
    .line 490
    .line 491
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->shareHandler:Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 492
    .line 493
    new-instance v1, Lcom/google/gson/GsonBuilder;

    .line 494
    .line 495
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    iget-object v4, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 500
    .line 501
    if-eqz v4, :cond_9

    .line 502
    .line 503
    iget-object v3, p0, Lorg/wikipedia/page/PageFragment;->leadImagesHandler:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 504
    .line 505
    if-eqz v3, :cond_8

    .line 506
    .line 507
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    iget-object v5, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 512
    .line 513
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    const/16 v7, 0xd

    .line 520
    .line 521
    invoke-direct {v1, v7}, Lcom/google/gson/GsonBuilder;-><init>(I)V

    .line 522
    .line 523
    .line 524
    iput-object v5, v1, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 525
    .line 526
    iput-object p0, v1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 527
    .line 528
    iput-object v2, v1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 529
    .line 530
    iput-object v4, v1, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 531
    .line 532
    iput-object v3, v1, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 533
    .line 534
    iput-object v0, v1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 535
    .line 536
    iput-object v1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 537
    .line 538
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    if-eqz v0, :cond_4

    .line 543
    .line 544
    new-instance v0, Lorg/wikipedia/LongPressHandler;

    .line 545
    .line 546
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    new-instance v2, Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 551
    .line 552
    invoke-direct {v2, p0}, Lorg/wikipedia/page/shareafact/ShareHandler;-><init>(Lorg/wikipedia/page/PageFragment;)V

    .line 553
    .line 554
    .line 555
    invoke-direct {v0, v1, v2}, Lorg/wikipedia/LongPressHandler;-><init>(Lorg/wikipedia/views/ObservableWebView;Lorg/wikipedia/page/shareafact/ShareHandler;)V

    .line 556
    .line 557
    .line 558
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    if-eqz v0, :cond_5

    .line 563
    .line 564
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    const-string v1, "org.wikipedia.resume_reading"

    .line 573
    .line 574
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-nez v0, :cond_6

    .line 579
    .line 580
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    const-string v0, "appShortcutContinueReading"

    .line 585
    .line 586
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 587
    .line 588
    .line 589
    move-result p1

    .line 590
    if-eqz p1, :cond_5

    .line 591
    .line 592
    goto :goto_2

    .line 593
    :cond_5
    if-eqz p2, :cond_7

    .line 594
    .line 595
    :cond_6
    :goto_2
    invoke-virtual {p0, v6}, Lorg/wikipedia/page/PageFragment;->reloadFromBackstack(Z)V

    .line 596
    .line 597
    .line 598
    :cond_7
    return-void

    .line 599
    :cond_8
    const-string p0, "leadImagesHandler"

    .line 600
    .line 601
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    throw v0

    .line 605
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    throw v0

    .line 609
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    throw v0

    .line 613
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    throw v0

    .line 617
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    throw v0

    .line 621
    :cond_d
    const-string p0, "bottomBarHideHandler"

    .line 622
    .line 623
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    throw v0

    .line 627
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw v0

    .line 631
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw v0

    .line 635
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    throw v0

    .line 639
    :cond_11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    throw v0

    .line 643
    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    throw v0

    .line 647
    :cond_13
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    throw v0

    .line 651
    :cond_14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    throw v0

    .line 655
    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw v0

    .line 659
    :cond_16
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    throw v0

    .line 663
    :cond_17
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    throw v0

    .line 667
    :cond_18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    throw v0

    .line 671
    :cond_19
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    throw v0

    .line 675
    :cond_1a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    throw v0

    .line 679
    :cond_1b
    const-string p0, "Attribute not found; ID=2130969831"

    .line 680
    .line 681
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    return-void
.end method

.method public final openInNewBackgroundTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0, p1, p2, v0}, Lorg/wikipedia/page/PageFragment;->openInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->loadFromBackStack()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string p0, "pageFragmentLoadState"

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v2

    .line 39
    :cond_1
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    sub-int/2addr v0, v1

    .line 47
    if-lez v0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/wikipedia/page/PageFragment;->openInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 59
    .line 60
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Lorg/wikipedia/page/ViewHideHandler;->ensureDisplayed()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Lorg/wikipedia/views/TabCountsView;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    const-string p0, "toolbarHideHandler"

    .line 80
    .line 81
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v2
.end method

.method public final openInNewTab(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->selectedTabPosition(Lorg/wikipedia/page/PageTitle;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/PageFragment;->setCurrentTabAndReset(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v1, "pageFragmentLoadState"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v0, :cond_6

    .line 25
    .line 26
    new-instance v0, Lorg/wikipedia/page/tabs/Tab;

    .line 27
    .line 28
    invoke-direct {v0}, Lorg/wikipedia/page/tabs/Tab;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 32
    .line 33
    iget-object v4, v3, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x0

    .line 40
    if-ne p3, v4, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v4, v5

    .line 45
    :goto_0
    if-eqz v4, :cond_3

    .line 46
    .line 47
    iget-object v6, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 48
    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    invoke-virtual {v6, v0}, Lcom/google/gson/GsonBuilder;->setTab(Lorg/wikipedia/page/tabs/Tab;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v2

    .line 59
    :cond_3
    :goto_1
    iget-object v1, v3, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v3, v3, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    const/16 v1, 0x64

    .line 71
    .line 72
    if-le p3, v1, :cond_4

    .line 73
    .line 74
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    new-instance p3, Lorg/wikipedia/page/PageBackStackItem;

    .line 79
    .line 80
    invoke-direct {p3, p1, p2}, Lorg/wikipedia/page/PageBackStackItem;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    if-nez v4, :cond_5

    .line 89
    .line 90
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    sget-object p3, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 95
    .line 96
    new-instance v0, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 97
    .line 98
    const/16 v1, 0x13

    .line 99
    .line 100
    invoke-direct {v0, p3, v1}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 101
    .line 102
    .line 103
    new-instance p3, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 104
    .line 105
    invoke-direct {p3, p1, v2, v5}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 106
    .line 107
    .line 108
    const/4 p1, 0x2

    .line 109
    invoke-static {p2, v0, v2, p3, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_6
    iget-object p3, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 121
    .line 122
    if-eqz p3, :cond_7

    .line 123
    .line 124
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p3, v0}, Lcom/google/gson/GsonBuilder;->setTab(Lorg/wikipedia/page/tabs/Tab;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    iget-object p0, p0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 136
    .line 137
    new-instance p3, Lorg/wikipedia/page/PageBackStackItem;

    .line 138
    .line 139
    invoke-direct {p3, p1, p2}, Lorg/wikipedia/page/PageBackStackItem;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v2
.end method

.method public final reloadFromBackstack(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "pageFragmentLoadState"

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/gson/GsonBuilder;->setTab(Lorg/wikipedia/page/tabs/Tab;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 21
    .line 22
    if-eqz p1, :cond_4

    .line 23
    .line 24
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lorg/wikipedia/page/tabs/Tab;

    .line 27
    .line 28
    iget-object p1, p1, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->loadFromBackStack()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 55
    .line 56
    sget-object p1, Lorg/wikipedia/page/PageActivity$TabPosition;->EXISTING_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void

    .line 62
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1
.end method

.method public final scrollToSection(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v0, "\""

    .line 16
    .line 17
    const-string v1, "\\\""

    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "pcs.c1.Page.prepareForScrollToAnchor(\""

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "\", { highlight: false } )"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const-string p0, "bridge"

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0
.end method

.method public final selectedTabPosition(Lorg/wikipedia/page/PageTitle;)I
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Lorg/wikipedia/page/tabs/Tab;

    .line 21
    .line 22
    invoke-virtual {v2}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    check-cast v1, Lorg/wikipedia/page/tabs/Tab;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_2
    const/4 p0, -0x1

    .line 52
    return p0
.end method

.method public final setCurrentTabAndReset(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, "pageFragmentLoadState"

    .line 15
    .line 16
    if-ge p1, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lorg/wikipedia/page/tabs/Tab;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/google/gson/GsonBuilder;->setTab(Lorg/wikipedia/page/tabs/Tab;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v3

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-lez p1, :cond_4

    .line 44
    .line 45
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lorg/wikipedia/page/tabs/Tab;

    .line 50
    .line 51
    iget-object v0, p1, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lorg/wikipedia/page/PageBackStackItem;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput v0, p1, Lorg/wikipedia/page/tabs/Tab;->backStackPosition:I

    .line 69
    .line 70
    :cond_2
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->pageFragmentLoadState:Lcom/google/gson/GsonBuilder;

    .line 71
    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/gson/GsonBuilder;->loadFromBackStack()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v3

    .line 82
    :cond_4
    return-void
.end method

.method public final showBottomSheet(Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final showFindInPage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "pcs.c1.Page.expandOrCollapseTables(true);var hideableSections = document.getElementsByClassName(\'pcs-section-hideable-header\'); for (var i = 0; i < hideableSections.length; i++) {   pcs.c1.Sections.setHidden(hideableSections[i].parentElement.getAttribute(\'data-mw-section-id\'), false);}"

    .line 20
    .line 21
    invoke-virtual {v0, p0, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p0, "bridge"

    .line 26
    .line 27
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    throw p0

    .line 32
    :cond_1
    return-void
.end method

.method public final startLangLinksActivity()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/wikipedia/history/HistoryEntry;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-wide v1, v1, Lorg/wikipedia/history/HistoryEntry;->id:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    :goto_0
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 27
    .line 28
    iget-object v3, p0, Lorg/wikipedia/page/PageActivity;->requestHandleIntentLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 29
    .line 30
    new-instance v4, Landroid/content/Intent;

    .line 31
    .line 32
    const-class v5, Lorg/wikipedia/language/LangLinksActivity;

    .line 33
    .line 34
    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    const-string p0, "title"

    .line 38
    .line 39
    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v0, "number"

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {v3, p0, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final startTalkTopicsActivity(Lorg/wikipedia/page/PageTitle;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/wikipedia/page/PageTitle;->copy$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/PageTitle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object v0, p1, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 9
    .line 10
    :cond_0
    sget p2, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 17
    .line 18
    invoke-static {p2, p1, v1}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final updateBookmarkAndMenuOptionsFromDao(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;-><init>(Lorg/wikipedia/page/PageFragment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object v0, v0, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;->L$1:Lorg/wikipedia/page/PageViewModel;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 53
    .line 54
    iget-object v2, p1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 61
    .line 62
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iput-object p1, v0, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;->L$1:Lorg/wikipedia/page/PageViewModel;

    .line 71
    .line 72
    iput v3, v0, Lorg/wikipedia/page/PageFragment$updateBookmarkAndMenuOptionsFromDao$1;->label:I

    .line 73
    .line 74
    invoke-virtual {v4, v2, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->findPageInAnyList(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-ne v0, v1, :cond_3

    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_3
    move-object v5, v0

    .line 82
    move-object v0, p1

    .line 83
    move-object p1, v5

    .line 84
    :goto_1
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 85
    .line 86
    iput-object p1, v0, Lorg/wikipedia/page/PageViewModel;->readingListPage:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->updateQuickActionsAndMenuOptions()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 96
    .line 97
    .line 98
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p0
.end method

.method public final updateProgressBar(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageActivity;->updateProgressBar$1(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final updateQuickActionsAndMenuOptions()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lorg/wikipedia/page/PageActionTabLayout;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    if-ge v3, v1, :cond_12

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-object v5, v4

    .line 33
    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    .line 34
    .line 35
    sget-object v6, Lorg/wikipedia/page/action/PageActionItem;->Companion:Lorg/wikipedia/page/action/PageActionItem$Companion;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v7}, Lorg/wikipedia/page/action/PageActionItem$Companion;->find(I)Lorg/wikipedia/page/action/PageActionItem;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-object v7, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 49
    .line 50
    iget-object v8, v7, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v8, Lorg/wikipedia/page/Page;

    .line 53
    .line 54
    const/4 v9, 0x1

    .line 55
    if-eqz v8, :cond_2

    .line 56
    .line 57
    invoke-virtual {v7}, Lorg/wikipedia/page/PageViewModel;->getShouldLoadAsMobileWeb()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_1

    .line 62
    .line 63
    invoke-virtual {v7}, Lorg/wikipedia/page/PageViewModel;->getShouldLoadAsMobileWeb()Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    invoke-virtual {v6}, Lorg/wikipedia/page/action/PageActionItem;->isAvailableOnMobileWeb()Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_2

    .line 74
    .line 75
    :cond_1
    move v8, v9

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move v8, v2

    .line 78
    :goto_1
    sget-object v10, Lorg/wikipedia/page/PageFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    aget v6, v10, v6

    .line 85
    .line 86
    if-eq v6, v9, :cond_c

    .line 87
    .line 88
    const/4 v10, 0x2

    .line 89
    if-eq v6, v10, :cond_a

    .line 90
    .line 91
    const/4 v10, 0x3

    .line 92
    if-eq v6, v10, :cond_7

    .line 93
    .line 94
    const/4 v10, 0x4

    .line 95
    if-eq v6, v10, :cond_3

    .line 96
    .line 97
    goto/16 :goto_b

    .line 98
    .line 99
    :cond_3
    iget-object v6, v7, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v6, Lorg/wikipedia/page/Page;

    .line 102
    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    iget-object v6, v6, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 106
    .line 107
    iget-object v6, v6, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    const/4 v6, 0x0

    .line 111
    :goto_2
    if-eqz v6, :cond_5

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    move v9, v2

    .line 115
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    if-eqz v9, :cond_6

    .line 120
    .line 121
    const v7, 0x7f04051a

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_6
    const v7, 0x7f0402dd

    .line 126
    .line 127
    .line 128
    :goto_4
    invoke-static {v6, v7}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 133
    .line 134
    .line 135
    check-cast v4, Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-static {v4, v6}, Lkotlin/uuid/UuidKt;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_b

    .line 141
    .line 142
    :cond_7
    iget-object v4, v7, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v4, Lorg/wikipedia/page/Page;

    .line 145
    .line 146
    if-eqz v4, :cond_8

    .line 147
    .line 148
    iget-object v4, v4, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 149
    .line 150
    iget-boolean v4, v4, Lorg/wikipedia/page/PageProperties;->canEdit:Z

    .line 151
    .line 152
    if-ne v4, v9, :cond_8

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_8
    move v9, v2

    .line 156
    :goto_5
    if-nez v9, :cond_9

    .line 157
    .line 158
    const v4, 0x7f080157

    .line 159
    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_9
    const v4, 0x7f0801a4

    .line 163
    .line 164
    .line 165
    :goto_6
    invoke-virtual {v5, v2, v4, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 166
    .line 167
    .line 168
    goto :goto_b

    .line 169
    :cond_a
    iget-object v4, v7, Lorg/wikipedia/page/PageViewModel;->readingListPage:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 172
    .line 173
    if-eqz v4, :cond_b

    .line 174
    .line 175
    const v4, 0x7f08012c

    .line 176
    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_b
    const v4, 0x7f08012a

    .line 180
    .line 181
    .line 182
    :goto_7
    invoke-virtual {v5, v2, v4, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 183
    .line 184
    .line 185
    goto :goto_b

    .line 186
    :cond_c
    iget-boolean v4, v7, Lorg/wikipedia/page/PageViewModel;->isWatched:Z

    .line 187
    .line 188
    if-eqz v4, :cond_d

    .line 189
    .line 190
    const v4, 0x7f120400

    .line 191
    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_d
    const v4, 0x7f120403

    .line 195
    .line 196
    .line 197
    :goto_8
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 198
    .line 199
    .line 200
    iget-boolean v4, v7, Lorg/wikipedia/page/PageViewModel;->isWatched:Z

    .line 201
    .line 202
    iget-boolean v6, v7, Lorg/wikipedia/page/PageViewModel;->hasWatchlistExpiry:Z

    .line 203
    .line 204
    if-eqz v4, :cond_e

    .line 205
    .line 206
    if-nez v6, :cond_e

    .line 207
    .line 208
    const v4, 0x7f0801ea

    .line 209
    .line 210
    .line 211
    goto :goto_9

    .line 212
    :cond_e
    if-nez v4, :cond_f

    .line 213
    .line 214
    const v4, 0x7f080127

    .line 215
    .line 216
    .line 217
    goto :goto_9

    .line 218
    :cond_f
    const v4, 0x7f080126

    .line 219
    .line 220
    .line 221
    :goto_9
    invoke-virtual {v5, v2, v4, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 222
    .line 223
    .line 224
    if-eqz v8, :cond_10

    .line 225
    .line 226
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-eqz v4, :cond_10

    .line 231
    .line 232
    goto :goto_a

    .line 233
    :cond_10
    move v9, v2

    .line 234
    :goto_a
    move v8, v9

    .line 235
    :goto_b
    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 236
    .line 237
    .line 238
    if-eqz v8, :cond_11

    .line 239
    .line 240
    const/high16 v4, 0x3f800000    # 1.0f

    .line 241
    .line 242
    goto :goto_c

    .line 243
    :cond_11
    const/high16 v4, 0x3f000000    # 0.5f

    .line 244
    .line 245
    :goto_c
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 246
    .line 247
    .line 248
    add-int/lit8 v3, v3, 0x1

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_12
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getSidePanelHandler()Lorg/wikipedia/page/SidePanelHandler;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v0, v2}, Lorg/wikipedia/page/SidePanelHandler;->setEnabled(Z)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public final verifyBeforeEditingDescription(Ljava/lang/String;Lorg/wikipedia/Constants$InvokeSource;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lorg/wikipedia/page/Page;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 19
    .line 20
    const v1, 0x7f12069b

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const v4, 0x7f0a0007

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-lt v1, v3, :cond_0

    .line 40
    .line 41
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    const p2, 0x7f120102

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 57
    .line 58
    invoke-direct {p2, v2, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const p0, 0x7f120529

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    const p0, 0x7f120110

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 79
    .line 80
    move-object v3, v0

    .line 81
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 82
    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    new-instance v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 86
    .line 87
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget-object v0, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 92
    .line 93
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iget-object v6, v3, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v7, v3, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    const/16 v10, 0x7c0

    .line 105
    .line 106
    const/4 v8, 0x0

    .line 107
    move-object v4, v3

    .line 108
    move-object v3, v0

    .line 109
    invoke-direct/range {v1 .. v10}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    move-object v3, v4

    .line 113
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-eqz p0, :cond_1

    .line 118
    .line 119
    sget-object v6, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 120
    .line 121
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    move-object v2, p1

    .line 125
    move-object v7, p2

    .line 126
    move-object v4, v1

    .line 127
    move-object v1, p0

    .line 128
    invoke-virtual/range {v1 .. v7}, Lorg/wikipedia/page/PageActivity;->onPageRequestEditDescription(Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    return-void
.end method
