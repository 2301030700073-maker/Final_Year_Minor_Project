.class public final Lorg/wikipedia/main/MainFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/BackPressedHandler;
.implements Landroidx/core/view/MenuProvider;
.implements Lorg/wikipedia/history/HistoryFragment$Callback;
.implements Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;
.implements Lorg/wikipedia/activitytab/ActivityTabFragment$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0003\t\n\u000bB\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/wikipedia/main/MainFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/wikipedia/BackPressedHandler;",
        "Landroidx/core/view/MenuProvider;",
        "Lorg/wikipedia/history/HistoryFragment$Callback;",
        "Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;",
        "Lorg/wikipedia/activitytab/ActivityTabFragment$Callback;",
        "<init>",
        "()V",
        "Callback",
        "PageChangeCallback",
        "org/wikipedia/media/AvPlayer",
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
.field public _binding:Lokhttp3/Request$Builder;

.field public final activityTabOnboardingLauncher:Landroidx/fragment/app/Fragment$10;

.field public final downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

.field public final downloadReceiverCallback:Lorg/wikipedia/media/AvPlayer;

.field public final navTabBackStack:Ljava/util/ArrayList;

.field public notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

.field public final pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

.field public pendingDownloadImage:Lorg/wikipedia/feed/image/FeaturedImage;

.field public final requestPermissionLauncher:Landroidx/fragment/app/Fragment$10;

.field public showTabCountsAnimation:Z

.field public tabCountsView:Lorg/wikipedia/views/TabCountsView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/wikipedia/gallery/MediaDownloadReceiver;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 10
    .line 11
    new-instance v0, Lorg/wikipedia/media/AvPlayer;

    .line 12
    .line 13
    const/16 v1, 0xd

    .line 14
    .line 15
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiverCallback:Lorg/wikipedia/media/AvPlayer;

    .line 19
    .line 20
    new-instance v0, Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/main/MainFragment$PageChangeCallback;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 27
    .line 28
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/main/MainFragment;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 44
    .line 45
    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->requestPermissionLauncher:Landroidx/fragment/app/Fragment$10;

    .line 46
    .line 47
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/main/MainFragment;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 64
    .line 65
    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->activityTabOnboardingLauncher:Landroidx/fragment/app/Fragment$10;

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->navTabBackStack:Ljava/util/ArrayList;

    .line 73
    .line 74
    return-void
.end method

.method public static final onFeedRemovePageFromList$lambda$0(Lorg/wikipedia/main/MainFragment;Lorg/wikipedia/history/HistoryEntry;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p3}, Landroid/app/Activity;->isDestroyed()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/16 p3, 0xa

    .line 20
    .line 21
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 43
    .line 44
    invoke-virtual {p3}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .line 54
    const/16 p3, 0x1a

    .line 55
    .line 56
    if-lt p2, p3, :cond_1

    .line 57
    .line 58
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v4, 0x0

    .line 68
    const/16 v5, 0x3e

    .line 69
    .line 70
    const-string v1, ", "

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    aput-object p1, v0, v1

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    aput-object p2, v0, p1

    .line 98
    .line 99
    const p1, 0x7f120777

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {p3, p0, v1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 110
    .line 111
    .line 112
    :cond_2
    return-void
.end method


# virtual methods
.method public final download(Lorg/wikipedia/feed/image/FeaturedImage;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/main/MainFragment;->pendingDownloadImage:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v2, p1, Lorg/wikipedia/feed/image/FeaturedImage;->title:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v3, "[:\\\\/*\"?|<>\']"

    .line 22
    .line 23
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v4, "_"

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItem;->original:Lorg/wikipedia/gallery/ImageInfo;

    .line 46
    .line 47
    iget-object p1, p1, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {v1, p1, v3, v2, v0}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->performDownloadRequest(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const p1, 0x7f120258

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p0}, Lorg/wikipedia/util/ShareUtil;->showMessage(ILandroidx/fragment/app/Fragment;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

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
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast v0, Lorg/wikipedia/navtab/NavTabFragmentPagerAdapter;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {v0, p0}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public final handleIntent$2(Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "appShortcutRandomizer"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget p1, Lorg/wikipedia/random/RandomActivity;->$r8$clinit:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->APP_SHORTCUTS:Lorg/wikipedia/Constants$InvokeSource;

    .line 27
    .line 28
    invoke-static {p1, v0, v2}, Lorg/wikipedia/random/RandomScreenKt;->newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string v0, "appShortcutSearch"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->APP_SHORTCUTS:Lorg/wikipedia/Constants$InvokeSource;

    .line 45
    .line 46
    invoke-virtual {p0, p1, v1, v1}, Lorg/wikipedia/main/MainFragment;->openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const-string v0, "appShortcutContinueReading"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lorg/wikipedia/login/LoginClient;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    const-string v0, "appShortcutPlaces"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    sget p1, Lorg/wikipedia/places/PlacesActivity;->$r8$clinit:I

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1, v1, v1}, Lokio/ByteString$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    const-string v0, "deleteReadingList"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    sget-object p1, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    const-string v0, "goToMainTab"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    iget-object v2, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v2, v2, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v2, Lorg/wikipedia/navtab/NavTabLayout;

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarView;->getSelectedItemId()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    sget-object v3, Lorg/wikipedia/navtab/NavTab;->HOME:Lorg/wikipedia/navtab/NavTab;

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-ne v2, v4, :cond_5

    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eq v2, v4, :cond_6

    .line 150
    .line 151
    :cond_5
    sget-object v1, Lorg/wikipedia/navtab/NavTab;->Companion:Lorg/wikipedia/navtab/NavTab$Companion;

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lorg/wikipedia/navtab/NavTab$Companion;->of(I)Lorg/wikipedia/navtab/NavTab;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_6
    const-string v0, "goToSETab"

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_7

    .line 179
    .line 180
    sget-object v1, Lorg/wikipedia/navtab/NavTab;->Companion:Lorg/wikipedia/navtab/NavTab$Companion;

    .line 181
    .line 182
    sget-object v2, Lorg/wikipedia/navtab/NavTab;->EDITS:Lorg/wikipedia/navtab/NavTab;

    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Lorg/wikipedia/navtab/NavTab$Companion;->of(I)Lorg/wikipedia/navtab/NavTab;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_7
    const-string v0, "previewSavedReadingList"

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_8

    .line 210
    .line 211
    sget-object p1, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    .line 212
    .line 213
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 218
    .line 219
    .line 220
    move-result-wide v2

    .line 221
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 222
    .line 223
    const v0, 0x7f12063b

    .line 224
    .line 225
    .line 226
    const-wide/16 v4, 0x0

    .line 227
    .line 228
    invoke-static {v4, v5, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 229
    .line 230
    .line 231
    move-result-wide v4

    .line 232
    sub-long/2addr v2, v4

    .line 233
    const-wide/32 v4, 0x5265c00

    .line 234
    .line 235
    .line 236
    div-long/2addr v2, v4

    .line 237
    const-wide/16 v4, 0x1

    .line 238
    .line 239
    cmp-long v0, v2, v4

    .line 240
    .line 241
    if-gez v0, :cond_9

    .line 242
    .line 243
    const-string v0, "returnToMain"

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-nez p1, :cond_9

    .line 250
    .line 251
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 252
    .line 253
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-lez p1, :cond_9

    .line 262
    .line 263
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 264
    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-static {p1}, Lorg/wikipedia/login/LoginClient;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 274
    .line 275
    .line 276
    :cond_9
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    const/16 v0, 0x2d

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    const-string v0, "android.speech.extra.RESULTS"

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    sget-object p2, Lorg/wikipedia/Constants$InvokeSource;->VOICE:Lorg/wikipedia/Constants$InvokeSource;

    .line 34
    .line 35
    invoke-virtual {p0, p2, p1, v1}, Lorg/wikipedia/main/MainFragment;->openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/16 v0, 0x34

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    if-ne p2, v2, :cond_1

    .line 45
    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, p3, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    const/16 v0, 0x35

    .line 53
    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    if-ne p2, v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->refreshContents()V

    .line 59
    .line 60
    .line 61
    const p1, 0x7f120351

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p0}, Lorg/wikipedia/util/ShareUtil;->showMessage(ILandroidx/fragment/app/Fragment;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    const/16 v0, 0x3d

    .line 69
    .line 70
    if-ne p1, v0, :cond_6

    .line 71
    .line 72
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 73
    .line 74
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/16 p1, 0xa

    .line 86
    .line 87
    if-eq p2, p1, :cond_5

    .line 88
    .line 89
    const/16 p1, 0xb

    .line 90
    .line 91
    if-eq p2, p1, :cond_4

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    .line 95
    .line 96
    new-instance p2, Lorg/wikipedia/page/PageTitle;

    .line 97
    .line 98
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {p3}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-static {p3}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p2, p3, v0, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/16 p3, 0x8

    .line 122
    .line 123
    invoke-direct {p1, p3, p2}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 124
    .line 125
    .line 126
    sget p2, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-static {p2, p1, p3}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Lorg/wikipedia/login/LoginClient;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_6
    const/16 v0, 0x3e

    .line 159
    .line 160
    const/4 v1, 0x3

    .line 161
    if-ne p1, v0, :cond_7

    .line 162
    .line 163
    const/16 v0, 0x62

    .line 164
    .line 165
    if-eq p2, v0, :cond_8

    .line 166
    .line 167
    :cond_7
    const/16 v0, 0x29

    .line 168
    .line 169
    if-ne p1, v0, :cond_a

    .line 170
    .line 171
    if-eq p2, v2, :cond_8

    .line 172
    .line 173
    const/4 v0, 0x2

    .line 174
    if-eq p2, v0, :cond_8

    .line 175
    .line 176
    if-ne p2, v1, :cond_a

    .line 177
    .line 178
    :cond_8
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->refreshContents()V

    .line 179
    .line 180
    .line 181
    if-ne p2, v1, :cond_9

    .line 182
    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    const p1, 0x7f1209c0

    .line 188
    .line 189
    .line 190
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 191
    .line 192
    .line 193
    :cond_9
    :goto_0
    return-void

    .line 194
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final onBackPressed()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lorg/wikipedia/BackPressedHandler;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lorg/wikipedia/BackPressedHandler;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lorg/wikipedia/BackPressedHandler;->onBackPressed()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->navTabBackStack:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/AbstractList;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    check-cast v0, Lorg/wikipedia/navtab/NavTab;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
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
    const p0, 0x7f0e0015

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
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c0199

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
    const p2, 0x7f09026e

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
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_6

    .line 23
    .line 24
    const p2, 0x7f09036c

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_6

    .line 32
    .line 33
    const p2, 0x7f09036d

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v6, v0

    .line 41
    check-cast v6, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    if-eqz v6, :cond_6

    .line 44
    .line 45
    const p2, 0x7f09036e

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v7, v0

    .line 53
    check-cast v7, Lorg/wikipedia/navtab/NavTabLayout;

    .line 54
    .line 55
    if-eqz v7, :cond_6

    .line 56
    .line 57
    const p2, 0x7f090371

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v8, v0

    .line 65
    check-cast v8, Landroidx/viewpager2/widget/ViewPager2;

    .line 66
    .line 67
    if-eqz v8, :cond_6

    .line 68
    .line 69
    new-instance v3, Lokhttp3/Request$Builder;

    .line 70
    .line 71
    move-object v4, p1

    .line 72
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    .line 74
    invoke-direct/range {v3 .. v8}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput-object v3, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 88
    .line 89
    invoke-virtual {p1, p0, p2, v0}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance p2, Lorg/wikipedia/main/MainFragment$onCreateView$1;

    .line 97
    .line 98
    invoke-direct {p2, p0, v2, v1}, Lorg/wikipedia/main/MainFragment$onCreateView$1;-><init>(Lorg/wikipedia/main/MainFragment;Lkotlin/coroutines/Continuation;I)V

    .line 99
    .line 100
    .line 101
    const/4 v0, 0x3

    .line 102
    invoke-static {p1, v2, v2, p2, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object p1, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iget-object p1, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 125
    .line 126
    new-instance p2, Lorg/wikipedia/navtab/NavTabFragmentPagerAdapter;

    .line 127
    .line 128
    invoke-direct {p2, p0}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object p1, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 142
    .line 143
    iget-object p2, p0, Lorg/wikipedia/main/MainFragment;->pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object p1, p1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast p1, Lorg/wikipedia/navtab/NavTabLayout;

    .line 156
    .line 157
    new-instance p2, Landroidx/core/view/ViewGroupKt$children$1;

    .line 158
    .line 159
    const/4 v0, 0x1

    .line 160
    invoke-direct {p2, p1, v0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;I)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Lkotlin/sequences/FilteringSequence;

    .line 164
    .line 165
    sget-object v3, Lorg/wikipedia/main/MainFragment$onCreateView$$inlined$filterIsInstance$1;->INSTANCE:Lorg/wikipedia/main/MainFragment$onCreateView$$inlined$filterIsInstance$1;

    .line 166
    .line 167
    invoke-direct {p1, p2, v0, v3}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 168
    .line 169
    .line 170
    new-instance p2, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 171
    .line 172
    invoke-direct {p2, p1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    invoke-virtual {p2}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    const/4 v3, 0x2

    .line 180
    if-eqz p1, :cond_0

    .line 181
    .line 182
    invoke-virtual {p2}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Landroid/widget/TextView;

    .line 187
    .line 188
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_0
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 193
    .line 194
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListOnboardingShown()Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_2

    .line 199
    .line 200
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListEnabled()Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_1

    .line 205
    .line 206
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isNewRecommendedReadingListGenerated()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_1

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_1
    move p1, v1

    .line 214
    goto :goto_2

    .line 215
    :cond_2
    :goto_1
    move p1, v0

    .line 216
    :goto_2
    iget-object p2, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 217
    .line 218
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iget-object p2, p2, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p2, Lorg/wikipedia/navtab/NavTabLayout;

    .line 224
    .line 225
    sget-object v4, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    .line 226
    .line 227
    invoke-virtual {p2, v4, p1}, Lorg/wikipedia/navtab/NavTabLayout;->setOverlayDot(Lorg/wikipedia/navtab/NavTab;Z)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    iget-object p1, p1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast p1, Lorg/wikipedia/navtab/NavTabLayout;

    .line 238
    .line 239
    new-instance p2, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;

    .line 240
    .line 241
    invoke-direct {p2, p0, v3}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/main/MainFragment;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p2}, Lcom/google/android/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    iget-object p1, p1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p1, Lorg/wikipedia/navtab/NavTabLayout;

    .line 255
    .line 256
    sget-object p2, Lorg/wikipedia/navtab/NavTab;->EDITS:Lorg/wikipedia/navtab/NavTab;

    .line 257
    .line 258
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isActivityTabOnboardingShown()Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    xor-int/2addr v3, v0

    .line 263
    invoke-virtual {p1, p2, v3}, Lorg/wikipedia/navtab/NavTabLayout;->setOverlayDot(Lorg/wikipedia/navtab/NavTab;Z)V

    .line 264
    .line 265
    .line 266
    const p1, 0x7f1205ff

    .line 267
    .line 268
    .line 269
    invoke-static {p1, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    const v3, 0x7f12060a

    .line 274
    .line 275
    .line 276
    if-nez p2, :cond_3

    .line 277
    .line 278
    invoke-static {v3, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isHomeFeedUpdateTooltipShown()Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-nez p2, :cond_4

    .line 287
    .line 288
    invoke-static {v3, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 289
    .line 290
    .line 291
    iget-object p2, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 292
    .line 293
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    iget-object p2, p2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 299
    .line 300
    new-instance v3, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 301
    .line 302
    invoke-direct {v3, v1, p0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 306
    .line 307
    .line 308
    :cond_4
    :goto_3
    invoke-static {p1, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    add-int/2addr p2, v0

    .line 313
    invoke-static {p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 314
    .line 315
    .line 316
    new-instance p1, Lorg/wikipedia/views/NotificationButtonView;

    .line 317
    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    invoke-direct {p1, p2, v2}, Lorg/wikipedia/views/NotificationButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 323
    .line 324
    .line 325
    iput-object p1, p0, Lorg/wikipedia/main/MainFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 326
    .line 327
    if-nez p3, :cond_5

    .line 328
    .line 329
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->handleIntent$2(Landroid/content/Intent;)V

    .line 341
    .line 342
    .line 343
    :cond_5
    iget-object p0, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 344
    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    iget-object p0, p0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 351
    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    return-object p0

    .line 356
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    const-string p1, "Missing required view with ID: "

    .line 365
    .line 366
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    return-object v2
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const v1, 0x7f120688

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 33
    .line 34
    iget-object v0, v0, Lorg/wikipedia/main/MainFragment$PageChangeCallback;->this$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v2, p0, Lorg/wikipedia/main/MainFragment;->pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 47
    .line 48
    return-void
.end method

.method public final onFeedSelectPage(Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Lorg/wikipedia/util/TabUtil;->openInNewBackgroundTab(Lorg/wikipedia/history/HistoryEntry;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lorg/wikipedia/main/MainFragment;->showTabCountsAnimation:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget p2, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p2, p1, v0}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const v0, 0x7f0903ea

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    instance-of p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 19
    .line 20
    if-eqz p1, :cond_6

    .line 21
    .line 22
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->searchActionModeCallback:Lorg/wikipedia/history/HistoryFragment$HistorySearchCallback;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    const v2, 0x7f0903d5

    .line 36
    .line 37
    .line 38
    if-ne p1, v2, :cond_7

    .line 39
    .line 40
    instance-of p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 41
    .line 42
    if-eqz p1, :cond_6

    .line 43
    .line 44
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 45
    .line 46
    new-instance p1, Lorg/wikipedia/views/ReadingListsOverflowView;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {p1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const v5, 0x7f0c05ea

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    move-object v5, v4

    .line 70
    check-cast v5, Lorg/wikipedia/views/WikiCardView;

    .line 71
    .line 72
    const v5, 0x7f090556

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz v6, :cond_5

    .line 82
    .line 83
    const v5, 0x7f090557

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Landroid/widget/TextView;

    .line 91
    .line 92
    if-eqz v7, :cond_5

    .line 93
    .line 94
    const v5, 0x7f090558

    .line 95
    .line 96
    .line 97
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Landroid/widget/TextView;

    .line 102
    .line 103
    if-eqz v8, :cond_5

    .line 104
    .line 105
    const v5, 0x7f090559

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    check-cast v9, Landroid/widget/LinearLayout;

    .line 113
    .line 114
    if-eqz v9, :cond_5

    .line 115
    .line 116
    const v5, 0x7f09055a

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    check-cast v10, Landroid/widget/TextView;

    .line 124
    .line 125
    if-eqz v10, :cond_5

    .line 126
    .line 127
    const v5, 0x7f09055b

    .line 128
    .line 129
    .line 130
    invoke-static {v4, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    check-cast v11, Landroid/widget/TextView;

    .line 135
    .line 136
    if-eqz v11, :cond_5

    .line 137
    .line 138
    new-instance v4, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;

    .line 139
    .line 140
    invoke-direct {v4, v3, p1, v0}, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lorg/wikipedia/views/ReadingListsOverflowView;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    new-instance v4, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    invoke-direct {v4, v3, p1, v1}, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lorg/wikipedia/views/ReadingListsOverflowView;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    new-instance v4, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    const/4 v5, 0x2

    .line 157
    invoke-direct {v4, v3, p1, v5}, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lorg/wikipedia/views/ReadingListsOverflowView;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    new-instance v4, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    const/4 v5, 0x3

    .line 166
    invoke-direct {v4, v3, p1, v5}, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lorg/wikipedia/views/ReadingListsOverflowView;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    new-instance v4, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;

    .line 173
    .line 174
    const/4 v5, 0x4

    .line 175
    invoke-direct {v4, v3, p1, v5}, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lorg/wikipedia/views/ReadingListsOverflowView;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Lorg/wikipedia/main/MainActivity;

    .line 186
    .line 187
    iget-object v3, v3, Lorg/wikipedia/main/MainActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 188
    .line 189
    if-eqz v3, :cond_4

    .line 190
    .line 191
    iget-object v3, v3, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v3, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 194
    .line 195
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->overflowCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 203
    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    iput-object p0, p1, Lorg/wikipedia/views/ReadingListsOverflowView;->callback:Ljava/lang/Object;

    .line 208
    .line 209
    new-instance p0, Landroid/widget/PopupWindow;

    .line 210
    .line 211
    const/4 v3, -0x2

    .line 212
    invoke-direct {p0, p1, v3, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 213
    .line 214
    .line 215
    iput-object p0, p1, Lorg/wikipedia/views/ReadingListsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 216
    .line 217
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 218
    .line 219
    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 226
    .line 227
    .line 228
    const v3, 0x800005

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v2, v0, v0, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 232
    .line 233
    .line 234
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 235
    .line 236
    const p0, 0x7f12065c

    .line 237
    .line 238
    .line 239
    const-string v2, ""

    .line 240
    .line 241
    invoke-static {p0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    if-eqz p0, :cond_2

    .line 246
    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_1

    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_1
    move v2, v0

    .line 255
    goto :goto_1

    .line 256
    :cond_2
    :goto_0
    const/16 v2, 0x8

    .line 257
    .line 258
    :goto_1
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    if-eqz p0, :cond_6

    .line 262
    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-nez v2, :cond_3

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    sget-object v3, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 275
    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-static {p1, p0}, Lorg/wikipedia/util/DateUtil;->getTimeAndDateString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    new-array p1, v1, [Ljava/lang/Object;

    .line 288
    .line 289
    aput-object p0, p1, v0

    .line 290
    .line 291
    const p0, 0x7f12077c

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_4
    const-string p0, "binding"

    .line 303
    .line 304
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const/4 p0, 0x0

    .line 308
    throw p0

    .line 309
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    const-string p1, "Missing required view with ID: "

    .line 318
    .line 319
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return v0

    .line 327
    :catch_0
    :cond_6
    :goto_2
    return v1

    .line 328
    :cond_7
    return v0
.end method

.method public final onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/wikipedia/navtab/NavTab;->getEntries()Lkotlin/enums/EnumEntries;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Lorg/wikipedia/navtab/NavTab;

    .line 24
    .line 25
    iget-object v3, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v3, v3, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Lorg/wikipedia/navtab/NavTabLayout;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarView;->getSelectedItemId()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v4, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v4, v4, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Lorg/wikipedia/navtab/NavTabLayout;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-interface {v4, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-ne v3, v2, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x0

    .line 73
    :goto_0
    check-cast v1, Lorg/wikipedia/navtab/NavTab;

    .line 74
    .line 75
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lorg/wikipedia/navtab/NavTabLayout;

    .line 83
    .line 84
    iget-object v2, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object v2, v2, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Lorg/wikipedia/navtab/NavTabLayout;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationBarView;->setSelectedItemId(I)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->EDITS:Lorg/wikipedia/navtab/NavTab;

    .line 119
    .line 120
    if-ne v1, v0, :cond_2

    .line 121
    .line 122
    if-eq p1, v0, :cond_2

    .line 123
    .line 124
    iget-object p0, p0, Lorg/wikipedia/main/MainFragment;->navTabBackStack:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_2
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/wikipedia/gallery/MediaDownloadReceiver;->callback:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0903ea

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v1, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0903d5

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v1, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 32
    .line 33
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0903f2

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 44
    .line 45
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x1

    .line 56
    if-lt v1, v4, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    instance-of v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 68
    .line 69
    .line 70
    new-instance v1, Lorg/wikipedia/views/TabCountsView;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-direct {v1, v5, v3}, Lorg/wikipedia/views/TabCountsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lorg/wikipedia/main/MainFragment;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    .line 80
    .line 81
    new-instance v5, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda2;

    .line 82
    .line 83
    invoke-direct {v5, p0, v2}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/main/MainFragment;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lorg/wikipedia/main/MainFragment;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-boolean v5, p0, Lorg/wikipedia/main/MainFragment;->showTabCountsAnimation:Z

    .line 95
    .line 96
    invoke-virtual {v1, v5}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lorg/wikipedia/main/MainFragment;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    const v5, 0x7f1203fe

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lorg/wikipedia/main/MainFragment;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    .line 115
    .line 116
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 117
    .line 118
    .line 119
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-array v1, v4, [Landroid/view/View;

    .line 128
    .line 129
    aput-object v0, v1, v2

    .line 130
    .line 131
    aget-object v0, v1, v2

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iput-boolean v2, p0, Lorg/wikipedia/main/MainFragment;->showTabCountsAnimation:Z

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_1
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    .line 145
    .line 146
    iput-object v3, p0, Lorg/wikipedia/main/MainFragment;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    .line 147
    .line 148
    :goto_1
    const v0, 0x7f0903d0

    .line 149
    .line 150
    .line 151
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 165
    .line 166
    const-string v1, "notificationButtonView"

    .line 167
    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    sget-object v5, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 171
    .line 172
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-virtual {v0, v5}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 180
    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    new-instance v5, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda2;

    .line 184
    .line 185
    invoke-direct {v5, p0, v4}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/main/MainFragment;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 192
    .line 193
    if-eqz v0, :cond_4

    .line 194
    .line 195
    const v5, 0x7f12047f

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 206
    .line 207
    if-eqz v0, :cond_3

    .line 208
    .line 209
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 210
    .line 211
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 216
    .line 217
    if-eqz p1, :cond_2

    .line 218
    .line 219
    new-array v0, v4, [Landroid/view/View;

    .line 220
    .line 221
    aput-object p1, v0, v2

    .line 222
    .line 223
    aget-object p1, v0, v2

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {p1, v0}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v3

    .line 237
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v3

    .line 241
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v3

    .line 245
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v3

    .line 249
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v3

    .line 253
    :cond_7
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 254
    .line 255
    .line 256
    :goto_2
    invoke-virtual {p0, v2}, Lorg/wikipedia/main/MainFragment;->updateNotificationDot$1(Z)V

    .line 257
    .line 258
    .line 259
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiverCallback:Lorg/wikipedia/media/AvPlayer;

    .line 9
    .line 10
    iget-object v3, p0, Lorg/wikipedia/main/MainFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 11
    .line 12
    invoke-virtual {v3, v1, v2}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->register(Landroid/content/Context;Lorg/wikipedia/gallery/MediaDownloadReceiver$Callback;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    const v3, 0x7f12063b

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->maybeShowYearInReviewFeedbackDialog(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x7e9

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getYearInReviewModelData()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    iget-boolean v2, v2, Lorg/wikipedia/yearinreview/YearInReviewModel;->isReadingListCreated:Z

    .line 51
    .line 52
    if-ne v2, v0, :cond_0

    .line 53
    .line 54
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getYearInReviewModelData()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 73
    .line 74
    if-eqz p0, :cond_0

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    const v3, 0x7ffff

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v2, v2, v3}, Lorg/wikipedia/yearinreview/YearInReviewModel;->copy$default(Lorg/wikipedia/yearinreview/YearInReviewModel;IZI)Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setYearInReviewModelData(Ljava/util/Map;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    return-void
.end method

.method public final openSearchActivity(Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x38

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, p1, p2, v2, v1}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object p2, v2

    .line 31
    :goto_0
    const-class v0, Lorg/wikipedia/search/SearchActivity;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const v0, 0x7f1209d0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p2, p3, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object p2, v2

    .line 60
    :goto_1
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :cond_2
    const/16 p2, 0x3e

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final refreshContents()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    instance-of v0, p0, Lorg/wikipedia/history/HistoryFragment;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->refresh()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    instance-of v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->refreshContents$1()V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final setBottomNavVisible(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v3, v1

    .line 18
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lorg/wikipedia/navtab/NavTabLayout;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    move v1, v2

    .line 33
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final updateNotificationDot$1(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "notificationButtonView"

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 11
    .line 12
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v0, v3}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lorg/wikipedia/main/MainFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/wikipedia/views/NotificationButtonView;->runAnimation()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v1

    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_3
    iget-object p0, p0, Lorg/wikipedia/main/MainFragment;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 49
    .line 50
    if-eqz p0, :cond_4

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method
