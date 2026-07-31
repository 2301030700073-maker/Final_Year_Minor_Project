.class public final Lorg/wikipedia/notifications/NotificationActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\u0008\tB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/wikipedia/notifications/NotificationActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "NotificationItemHolder",
        "NotificationSearchBarHolder",
        "DiffLinesAdapter",
        "SearchCallback",
        "MultiSelectCallback",
        "Companion",
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
.field public actionMode:Landroidx/appcompat/view/ActionMode;

.field public binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

.field public externalLinkIcon:Landroid/graphics/drawable/Drawable;

.field public fromContinuation:Z

.field public final multiSelectActionModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

.field public notificationActionOverflowView:Lorg/wikipedia/views/NotificationActionsOverflowView;

.field public final notificationContainerList:Ljava/util/ArrayList;

.field public final resultLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

.field public final typefaceSansSerifBold:Landroid/graphics/Typeface;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/notifications/NotificationActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/notifications/NotificationActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/notifications/NotificationActivity;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v2, Lorg/wikipedia/notifications/NotificationViewModel;

    .line 13
    .line 14
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lorg/wikipedia/notifications/NotificationActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/notifications/NotificationActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/notifications/NotificationActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lorg/wikipedia/notifications/NotificationActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    invoke-direct {v5, p0, v6}, Lorg/wikipedia/notifications/NotificationActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/notifications/NotificationActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v5}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->notificationContainerList:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 45
    .line 46
    invoke-direct {v0, v4, p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->multiSelectActionModeCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 50
    .line 51
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 52
    .line 53
    invoke-direct {v0, v6, p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 57
    .line 58
    const-string v0, "sans-serif"

    .line 59
    .line 60
    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->typefaceSansSerifBold:Landroid/graphics/Typeface;

    .line 65
    .line 66
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 67
    .line 68
    const/4 v1, 0x3

    .line 69
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/notifications/NotificationActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 82
    .line 83
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->resultLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 84
    .line 85
    return-void
.end method

.method public static synthetic markReadItems$default(Lorg/wikipedia/notifications/NotificationActivity;Ljava/util/List;ZLjava/lang/Integer;I)V
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    and-int/lit8 p4, p4, 0x8

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/wikipedia/notifications/NotificationActivity;->markReadItems(Ljava/util/List;ZZLjava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final adjustRefreshViewLayoutParams$1(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const p1, 0x7f040006

    .line 33
    .line 34
    .line 35
    filled-new-array {p1}, [I

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    .line 56
    .line 57
    :cond_1
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    const-string p0, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    .line 64
    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    const-string p0, "binding"

    .line 70
    .line 71
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1
.end method

.method public final finishActionMode$1()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getSelectedItemCount()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->notificationContainerList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 28
    .line 29
    iget-boolean v1, v1, Lorg/wikipedia/notifications/NotificationListItemContainer;->selected:Z

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    if-ltz v0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0

    .line 43
    :cond_3
    return v0
.end method

.method public final getSelectedItems()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->notificationContainerList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 24
    .line 25
    iget v2, v2, Lorg/wikipedia/notifications/NotificationListItemContainer;->type:I

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v2, v1

    .line 54
    check-cast v2, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 55
    .line 56
    iget-boolean v2, v2, Lorg/wikipedia/notifications/NotificationListItemContainer;->selected:Z

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    return-object p0
.end method

.method public final getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/notifications/NotificationViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final markReadItems(Ljava/util/List;ZZLjava/lang/Integer;)V
    .locals 10

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
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const p1, 0x7f12049a

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, v0, Lorg/wikipedia/notifications/NotificationViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 36
    .line 37
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v5, 0x1

    .line 47
    if-le v4, v5, :cond_2

    .line 48
    .line 49
    new-instance v4, Ljava/util/Random;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_8

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 72
    .line 73
    iget-object v6, v6, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object v7, v6, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, v0, Lorg/wikipedia/notifications/NotificationViewModel;->dbNameMap:Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    if-nez v8, :cond_6

    .line 87
    .line 88
    const-string v8, "commonswiki"

    .line 89
    .line 90
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_3

    .line 95
    .line 96
    sget-object v7, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 97
    .line 98
    :goto_1
    move-object v8, v7

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    const-string/jumbo v8, "wikidatawiki"

    .line 101
    .line 102
    .line 103
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_4

    .line 108
    .line 109
    sget-object v7, Lorg/wikipedia/Constants;->wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    sget-object v8, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 113
    .line 114
    invoke-static {v7}, Lorg/wikipedia/util/StringUtil;->dbNameToLangCode(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    sget-object v8, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 119
    .line 120
    sget-object v9, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 121
    .line 122
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-virtual {v9}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-virtual {v9, v7}, Lorg/wikipedia/language/AppLanguageState;->getDefaultLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    if-nez v9, :cond_5

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    move-object v7, v9

    .line 138
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static {v7}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    goto :goto_1

    .line 146
    :cond_6
    :goto_3
    check-cast v8, Lorg/wikipedia/dataclient/WikiSite;

    .line 147
    .line 148
    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    if-nez v7, :cond_7

    .line 153
    .line 154
    new-instance v7, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    :cond_7
    check-cast v7, Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_8
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    new-instance v6, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 173
    .line 174
    const/4 v7, 0x4

    .line 175
    const/4 v8, 0x0

    .line 176
    invoke-direct {v6, v3, p2, v8, v7}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;I)V

    .line 177
    .line 178
    .line 179
    const/4 v3, 0x2

    .line 180
    invoke-static {v4, v2, v8, v6, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 181
    .line 182
    .line 183
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    new-instance v6, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;

    .line 188
    .line 189
    invoke-direct {v6, v0, p1, p2, v8}, Lorg/wikipedia/notifications/NotificationViewModel$markItemsAsRead$3;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v4, v2, v8, v6, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 193
    .line 194
    .line 195
    if-nez p3, :cond_a

    .line 196
    .line 197
    if-eqz p2, :cond_9

    .line 198
    .line 199
    const p3, 0x7f100019

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_9
    const p3, 0x7f100018

    .line 204
    .line 205
    .line 206
    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    new-array v4, v5, [Ljava/lang/Object;

    .line 223
    .line 224
    aput-object v3, v4, v1

    .line 225
    .line 226
    invoke-virtual {v0, p3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p3

    .line 230
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    const/16 v0, 0xc

    .line 234
    .line 235
    invoke-static {p0, p3, v1, v0}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 236
    .line 237
    .line 238
    move-result-object p3

    .line 239
    new-instance v0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda1;

    .line 240
    .line 241
    invoke-direct {v0, p0, p1, p2}, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/notifications/NotificationActivity;Ljava/util/List;Z)V

    .line 242
    .line 243
    .line 244
    const p1, 0x7f12046f

    .line 245
    .line 246
    .line 247
    invoke-virtual {p3, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p3}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 251
    .line 252
    .line 253
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->finishActionMode$1()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, p4}, Lorg/wikipedia/notifications/NotificationActivity;->postprocessAndDisplay(Ljava/lang/Integer;)V

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v2, 0x7f0c0027

    .line 11
    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    invoke-virtual {v0, v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x7f090476

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    .line 27
    .line 28
    if-eqz v3, :cond_16

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 32
    .line 33
    const v4, 0x7f090478

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Landroid/widget/LinearLayout;

    .line 41
    .line 42
    if-eqz v5, :cond_15

    .line 43
    .line 44
    const v4, 0x7f090479

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz v6, :cond_15

    .line 54
    .line 55
    const v4, 0x7f09047a

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    check-cast v9, Lorg/wikipedia/views/WikiErrorView;

    .line 63
    .line 64
    if-eqz v9, :cond_15

    .line 65
    .line 66
    const v4, 0x7f09047c

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    check-cast v10, Landroid/widget/ProgressBar;

    .line 74
    .line 75
    if-eqz v10, :cond_15

    .line 76
    .line 77
    const v4, 0x7f09047d

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    if-eqz v11, :cond_15

    .line 87
    .line 88
    const v4, 0x7f09047e

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    check-cast v12, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 96
    .line 97
    if-eqz v12, :cond_15

    .line 98
    .line 99
    const v4, 0x7f09047f

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    check-cast v13, Landroid/widget/LinearLayout;

    .line 107
    .line 108
    if-eqz v13, :cond_15

    .line 109
    .line 110
    const v4, 0x7f090480

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    check-cast v14, Landroid/widget/TextView;

    .line 118
    .line 119
    if-eqz v14, :cond_15

    .line 120
    .line 121
    const v4, 0x7f090481

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    check-cast v15, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 129
    .line 130
    if-eqz v15, :cond_15

    .line 131
    .line 132
    const v4, 0x7f090482

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v16

    .line 139
    check-cast v16, Lcom/google/android/material/appbar/AppBarLayout;

    .line 140
    .line 141
    if-eqz v16, :cond_15

    .line 142
    .line 143
    new-instance v0, Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object v2, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v3, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v2, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v5, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object v6, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 157
    .line 158
    iput-object v9, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v10, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object v11, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v12, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 165
    .line 166
    iput-object v13, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v14, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v15, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 178
    .line 179
    const-string v9, "binding"

    .line 180
    .line 181
    if-eqz v0, :cond_14

    .line 182
    .line 183
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    .line 196
    const v2, 0x7f12047f

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v0, v2}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    :cond_0
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 207
    .line 208
    if-eqz v0, :cond_13

    .line 209
    .line 210
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 213
    .line 214
    new-instance v2, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;

    .line 215
    .line 216
    invoke-direct {v2, v1}, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/notifications/NotificationActivity;)V

    .line 217
    .line 218
    .line 219
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 220
    .line 221
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 225
    .line 226
    if-eqz v0, :cond_12

    .line 227
    .line 228
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 231
    .line 232
    new-instance v2, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;

    .line 233
    .line 234
    invoke-direct {v2, v1, v8}, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/notifications/NotificationActivity;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 241
    .line 242
    if-eqz v0, :cond_11

    .line 243
    .line 244
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 247
    .line 248
    new-instance v2, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;

    .line 249
    .line 250
    const/4 v10, 0x1

    .line 251
    invoke-direct {v2, v1, v10}, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/notifications/NotificationActivity;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 258
    .line 259
    if-eqz v0, :cond_10

    .line 260
    .line 261
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 264
    .line 265
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 266
    .line 267
    invoke-direct {v2, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 271
    .line 272
    .line 273
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 274
    .line 275
    if-eqz v0, :cond_f

    .line 276
    .line 277
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    new-instance v2, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 282
    .line 283
    invoke-direct {v2, v10, v1}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(ILjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 287
    .line 288
    .line 289
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 290
    .line 291
    if-eqz v0, :cond_e

    .line 292
    .line 293
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 296
    .line 297
    new-instance v2, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 298
    .line 299
    const/16 v3, 0xc

    .line 300
    .line 301
    invoke-direct {v2, v1, v8, v8, v3}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 305
    .line 306
    .line 307
    const v0, 0x7f0801c3

    .line 308
    .line 309
    .line 310
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    const/high16 v2, 0x41800000    # 16.0f

    .line 318
    .line 319
    invoke-static {v2}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-static {v0, v2, v2}, Lkotlin/UnsignedKt;->updateBounds$default(Landroid/graphics/drawable/Drawable;II)V

    .line 324
    .line 325
    .line 326
    iput-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->externalLinkIcon:Landroid/graphics/drawable/Drawable;

    .line 327
    .line 328
    new-instance v0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 329
    .line 330
    new-instance v2, Landroid/util/TypedValue;

    .line 331
    .line 332
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    const v4, 0x7f040520

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v4, v2, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_1

    .line 347
    .line 348
    goto :goto_0

    .line 349
    :cond_1
    move-object v2, v7

    .line 350
    :goto_0
    if-eqz v2, :cond_d

    .line 351
    .line 352
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 353
    .line 354
    const v3, 0x106000b

    .line 355
    .line 356
    .line 357
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    iget-object v3, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 362
    .line 363
    if-eqz v3, :cond_c

    .line 364
    .line 365
    iget-object v3, v3, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 366
    .line 367
    move-object v6, v3

    .line 368
    check-cast v6, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 369
    .line 370
    const v3, 0x7f0801c4

    .line 371
    .line 372
    .line 373
    const/4 v5, 0x1

    .line 374
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;-><init>(Landroid/content/Context;IILjava/lang/Integer;ZLandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 375
    .line 376
    .line 377
    iput-boolean v10, v0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeableEnabled:Z

    .line 378
    .line 379
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 380
    .line 381
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 385
    .line 386
    if-eqz v0, :cond_b

    .line 387
    .line 388
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 391
    .line 392
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 393
    .line 394
    .line 395
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 396
    .line 397
    if-eqz v0, :cond_a

    .line 398
    .line 399
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 402
    .line 403
    new-instance v2, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;

    .line 404
    .line 405
    invoke-direct {v2, v1}, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/notifications/NotificationActivity;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 409
    .line 410
    .line 411
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 412
    .line 413
    if-eqz v0, :cond_9

    .line 414
    .line 415
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 418
    .line 419
    new-instance v2, Lorg/wikipedia/views/LanguageScrollView$1;

    .line 420
    .line 421
    const/4 v3, 0x3

    .line 422
    invoke-direct {v2, v3, v1}, Lorg/wikipedia/views/LanguageScrollView$1;-><init>(ILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 426
    .line 427
    .line 428
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 429
    .line 430
    const v0, 0x7f120630

    .line 431
    .line 432
    .line 433
    invoke-static {v0, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 434
    .line 435
    .line 436
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 437
    .line 438
    if-eqz v0, :cond_8

    .line 439
    .line 440
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 443
    .line 444
    const/16 v2, 0x8

    .line 445
    .line 446
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 447
    .line 448
    .line 449
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 450
    .line 451
    if-eqz v0, :cond_7

    .line 452
    .line 453
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 456
    .line 457
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 461
    .line 462
    if-eqz v0, :cond_6

    .line 463
    .line 464
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v0, Landroid/widget/LinearLayout;

    .line 467
    .line 468
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    .line 470
    .line 471
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 472
    .line 473
    if-eqz v0, :cond_5

    .line 474
    .line 475
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v0, Landroid/widget/LinearLayout;

    .line 478
    .line 479
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 480
    .line 481
    .line 482
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 483
    .line 484
    if-eqz v0, :cond_4

    .line 485
    .line 486
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v0, Landroid/widget/ProgressBar;

    .line 489
    .line 490
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 491
    .line 492
    .line 493
    iget-object v0, v1, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 494
    .line 495
    if-eqz v0, :cond_3

    .line 496
    .line 497
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 500
    .line 501
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    if-eqz v0, :cond_2

    .line 509
    .line 510
    invoke-virtual {v0}, Lcoil3/util/ContextsKt;->setTitle()V

    .line 511
    .line 512
    .line 513
    :cond_2
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    new-instance v2, Lorg/wikipedia/notifications/NotificationActivity$onCreate$7;

    .line 518
    .line 519
    invoke-direct {v2, v1, v7, v8}, Lorg/wikipedia/notifications/NotificationActivity$onCreate$7;-><init>(Lorg/wikipedia/notifications/NotificationActivity;Lkotlin/coroutines/Continuation;I)V

    .line 520
    .line 521
    .line 522
    invoke-static {v0, v7, v7, v2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 523
    .line 524
    .line 525
    return-void

    .line 526
    :cond_3
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    throw v7

    .line 530
    :cond_4
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    throw v7

    .line 534
    :cond_5
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    throw v7

    .line 538
    :cond_6
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    throw v7

    .line 542
    :cond_7
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    throw v7

    .line 546
    :cond_8
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    throw v7

    .line 550
    :cond_9
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    throw v7

    .line 554
    :cond_a
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v7

    .line 558
    :cond_b
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw v7

    .line 562
    :cond_c
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw v7

    .line 566
    :cond_d
    const-string v0, "Attribute not found; ID=2130969888"

    .line 567
    .line 568
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :cond_e
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    throw v7

    .line 576
    :cond_f
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    throw v7

    .line 580
    :cond_10
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    throw v7

    .line 584
    :cond_11
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    throw v7

    .line 588
    :cond_12
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    throw v7

    .line 592
    :cond_13
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    throw v7

    .line 596
    :cond_14
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    throw v7

    .line 600
    :cond_15
    move v2, v4

    .line 601
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    const-string v1, "Missing required view with ID: "

    .line 610
    .line 611
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const v0, 0x7f0e0016

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    move-result v0

    .line 8
    const v1, 0x7f0903d2

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v0, v1, :cond_5

    .line 14
    .line 15
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity;->notificationContainerList:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_4

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object v4, v1

    .line 43
    check-cast v4, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 44
    .line 45
    iget v4, v4, Lorg/wikipedia/notifications/NotificationListItemContainer;->type:I

    .line 46
    .line 47
    if-nez v4, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move-object v4, v1

    .line 74
    check-cast v4, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 75
    .line 76
    iget-object v4, v4, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    invoke-virtual {v4}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-ne v4, v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 v0, 0x0

    .line 91
    const/16 v1, 0xc

    .line 92
    .line 93
    invoke-static {p0, p1, v0, v2, v1}, Lorg/wikipedia/notifications/NotificationActivity;->markReadItems$default(Lorg/wikipedia/notifications/NotificationActivity;Ljava/util/List;ZLjava/lang/Integer;I)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return v3

    .line 97
    :cond_5
    const v1, 0x7f0903d3

    .line 98
    .line 99
    .line 100
    if-ne v0, v1, :cond_6

    .line 101
    .line 102
    new-instance p1, Landroid/content/Intent;

    .line 103
    .line 104
    const-class v0, Lorg/wikipedia/settings/NotificationSettingsActivity;

    .line 105
    .line 106
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->resultLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 110
    .line 111
    invoke-virtual {p0, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 112
    .line 113
    .line 114
    return v3

    .line 115
    :cond_6
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    return p0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0903d2

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v1, v1, Lorg/wikipedia/notifications/NotificationViewModel;->allUnreadCount:I

    .line 16
    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Lorg/wikipedia/notifications/NotificationActivity;->postprocessAndDisplay(Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "searchActionMode"

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 25
    .line 26
    check-cast p0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/views/SearchAndFilterActionProvider;->updateFilterIconAndText()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->notificationActionOverflowView:Lorg/wikipedia/views/NotificationActionsOverflowView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v2, v0, Lorg/wikipedia/views/NotificationActionsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object v1, v0, Lorg/wikipedia/views/NotificationActionsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 25
    .line 26
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    const-string p0, "binding"

    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1
.end method

.method public final postprocessAndDisplay(Ljava/lang/Integer;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_1e

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget v4, v4, Lorg/wikipedia/notifications/NotificationViewModel;->allUnreadCount:I

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    const-string v6, " "

    .line 28
    .line 29
    const v7, 0x7f1204a7

    .line 30
    .line 31
    .line 32
    const v8, 0x7f1204a5

    .line 33
    .line 34
    .line 35
    if-lez v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-array v9, v5, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object v4, v9, v3

    .line 48
    .line 49
    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v9, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 83
    .line 84
    if-eqz v0, :cond_1d

    .line 85
    .line 86
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 89
    .line 90
    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget v4, v4, Lorg/wikipedia/notifications/NotificationViewModel;->mentionsUnreadCount:I

    .line 102
    .line 103
    const v8, 0x7f1204a6

    .line 104
    .line 105
    .line 106
    if-lez v4, :cond_1

    .line 107
    .line 108
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    new-array v9, v5, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v4, v9, v3

    .line 119
    .line 120
    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 154
    .line 155
    if-eqz v0, :cond_1c

    .line 156
    .line 157
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 160
    .line 161
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 162
    .line 163
    const/16 v6, 0x8

    .line 164
    .line 165
    if-eqz v4, :cond_2

    .line 166
    .line 167
    move v4, v6

    .line 168
    goto :goto_2

    .line 169
    :cond_2
    move v4, v3

    .line 170
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 174
    .line 175
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationActivity;->notificationContainerList:Ljava/util/ArrayList;

    .line 176
    .line 177
    if-eqz v0, :cond_5

    .line 178
    .line 179
    if-eqz v4, :cond_3

    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_3

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_9

    .line 197
    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 203
    .line 204
    iget v7, v7, Lorg/wikipedia/notifications/NotificationListItemContainer;->type:I

    .line 205
    .line 206
    if-nez v7, :cond_4

    .line 207
    .line 208
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_5
    if-eqz v4, :cond_6

    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_6

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eqz v7, :cond_8

    .line 230
    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    check-cast v7, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 236
    .line 237
    iget v7, v7, Lorg/wikipedia/notifications/NotificationListItemContainer;->type:I

    .line 238
    .line 239
    if-nez v7, :cond_7

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_8
    :goto_3
    new-instance v0, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 243
    .line 244
    const/4 v7, 0x7

    .line 245
    invoke-direct {v0, v1, v7}, Lorg/wikipedia/notifications/NotificationListItemContainer;-><init>(Lorg/wikipedia/notifications/db/Notification;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_9
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    if-eqz v7, :cond_b

    .line 265
    .line 266
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    move-object v8, v7

    .line 271
    check-cast v8, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 272
    .line 273
    iget v8, v8, Lorg/wikipedia/notifications/NotificationListItemContainer;->type:I

    .line 274
    .line 275
    if-nez v8, :cond_a

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_a
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 287
    .line 288
    if-eqz v0, :cond_14

    .line 289
    .line 290
    if-eqz v4, :cond_13

    .line 291
    .line 292
    iget-object v0, v4, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v0, Landroid/widget/LinearLayout;

    .line 295
    .line 296
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 297
    .line 298
    if-nez v4, :cond_c

    .line 299
    .line 300
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v4}, Lorg/wikipedia/notifications/NotificationViewModel;->excludedFiltersCount()I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-nez v4, :cond_c

    .line 309
    .line 310
    move v4, v3

    .line 311
    goto :goto_6

    .line 312
    :cond_c
    move v4, v6

    .line 313
    :goto_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 317
    .line 318
    if-eqz v0, :cond_12

    .line 319
    .line 320
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v0, Landroid/widget/LinearLayout;

    .line 323
    .line 324
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v4}, Lorg/wikipedia/notifications/NotificationViewModel;->excludedFiltersCount()I

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_d

    .line 333
    .line 334
    move v4, v3

    .line 335
    goto :goto_7

    .line 336
    :cond_d
    move v4, v6

    .line 337
    :goto_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 341
    .line 342
    if-eqz v0, :cond_11

    .line 343
    .line 344
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v0, Landroid/widget/TextView;

    .line 347
    .line 348
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 349
    .line 350
    if-eqz v4, :cond_e

    .line 351
    .line 352
    move v6, v3

    .line 353
    :cond_e
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-virtual {v4}, Lorg/wikipedia/notifications/NotificationViewModel;->excludedFiltersCount()I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    invoke-virtual {v6}, Lorg/wikipedia/notifications/NotificationViewModel;->excludedFiltersCount()I

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    new-array v7, v5, [Ljava/lang/Object;

    .line 381
    .line 382
    aput-object v6, v7, v3

    .line 383
    .line 384
    const v6, 0x7f10001a

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 395
    .line 396
    if-eqz v4, :cond_10

    .line 397
    .line 398
    iget-object v4, v4, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v4, Landroid/widget/TextView;

    .line 401
    .line 402
    sget-object v6, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 403
    .line 404
    const-string v6, "<a href=\"#\">"

    .line 405
    .line 406
    const-string v7, "</a>"

    .line 407
    .line 408
    invoke-static {v6, v0, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    new-array v5, v5, [Ljava/lang/Object;

    .line 413
    .line 414
    aput-object v0, v5, v3

    .line 415
    .line 416
    const v0, 0x7f12048d

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 431
    .line 432
    if-eqz v0, :cond_f

    .line 433
    .line 434
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v0, Landroid/widget/TextView;

    .line 437
    .line 438
    new-instance v3, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 439
    .line 440
    new-instance v4, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;

    .line 441
    .line 442
    invoke-direct {v4, p0}, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/notifications/NotificationActivity;)V

    .line 443
    .line 444
    .line 445
    invoke-direct {v3, v4}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 449
    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw v1

    .line 456
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw v1

    .line 460
    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v1

    .line 464
    :cond_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v1

    .line 468
    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw v1

    .line 472
    :cond_14
    if-eqz v4, :cond_1b

    .line 473
    .line 474
    iget-object v0, v4, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v0, Landroid/widget/LinearLayout;

    .line 477
    .line 478
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 479
    .line 480
    .line 481
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 482
    .line 483
    if-eqz v0, :cond_1a

    .line 484
    .line 485
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v0, Landroid/widget/LinearLayout;

    .line 488
    .line 489
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 490
    .line 491
    .line 492
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 493
    .line 494
    if-eqz v0, :cond_19

    .line 495
    .line 496
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v0, Landroid/widget/TextView;

    .line 499
    .line 500
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 501
    .line 502
    .line 503
    :goto_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 504
    .line 505
    .line 506
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 507
    .line 508
    if-eqz p1, :cond_16

    .line 509
    .line 510
    if-eqz p0, :cond_15

    .line 511
    .line 512
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 515
    .line 516
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 517
    .line 518
    .line 519
    move-result-object p0

    .line 520
    if-eqz p0, :cond_17

    .line 521
    .line 522
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 523
    .line 524
    .line 525
    move-result p1

    .line 526
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    :cond_15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    throw v1

    .line 534
    :cond_16
    if-eqz p0, :cond_18

    .line 535
    .line 536
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 539
    .line 540
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    if-eqz p0, :cond_17

    .line 545
    .line 546
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 547
    .line 548
    .line 549
    :cond_17
    return-void

    .line 550
    :cond_18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    throw v1

    .line 554
    :cond_19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v1

    .line 558
    :cond_1a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw v1

    .line 562
    :cond_1b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw v1

    .line 566
    :cond_1c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw v1

    .line 570
    :cond_1d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    throw v1

    .line 574
    :cond_1e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    throw v1
.end method

.method public final toggleSelectItem(Lorg/wikipedia/notifications/NotificationListItemContainer;I)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lorg/wikipedia/notifications/NotificationListItemContainer;->selected:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p1, Lorg/wikipedia/notifications/NotificationListItemContainer;->selected:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getSelectedItemCount()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->finishActionMode$1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 24
    .line 25
    if-eqz p0, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :cond_3
    const-string p0, "binding"

    .line 42
    .line 43
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    throw p0
.end method
