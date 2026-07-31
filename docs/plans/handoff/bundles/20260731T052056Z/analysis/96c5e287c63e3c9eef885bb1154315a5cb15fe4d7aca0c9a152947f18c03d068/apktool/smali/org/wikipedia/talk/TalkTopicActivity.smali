.class public final Lorg/wikipedia/talk/TalkTopicActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\u0005\u0008\tB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/wikipedia/talk/TalkTopicActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "SearchCallback",
        "HeaderItemAdapter",
        "HeaderViewHolder",
        "TalkReplyHolder",
        "TalkLinkHandler",
        "org/wikipedia/util/UriUtil",
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

.field public binding:Lokhttp3/Request$Builder;

.field public final headerAdapter:Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

.field public linkHandler:Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;

.field public final linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field public final replyResult:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestEditSource:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestLogin:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

.field public final threadAdapter:Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/talk/TalkTopicActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v3, Lorg/wikipedia/talk/TalkTopicViewModel;

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
    new-instance v4, Lorg/wikipedia/talk/TalkTopicActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/talk/TalkTopicActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lorg/wikipedia/talk/TalkTopicActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    invoke-direct {v6, p0, v7}, Lorg/wikipedia/talk/TalkTopicActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v4, v0, v6}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lorg/wikipedia/talk/TalkTopicActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

    .line 38
    .line 39
    invoke-direct {v0, p0, v5}, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->threadAdapter:Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

    .line 43
    .line 44
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

    .line 45
    .line 46
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->headerAdapter:Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

    .line 50
    .line 51
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 52
    .line 53
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 57
    .line 58
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 59
    .line 60
    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;

    .line 61
    .line 62
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 69
    .line 70
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 71
    .line 72
    const/4 v1, 0x3

    .line 73
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;

    .line 77
    .line 78
    invoke-direct {v2, p0, v7}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 86
    .line 87
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->requestEditSource:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 88
    .line 89
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 90
    .line 91
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;

    .line 95
    .line 96
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v2, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 104
    .line 105
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->requestLogin:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 106
    .line 107
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 108
    .line 109
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;

    .line 113
    .line 114
    const/4 v2, 0x4

    .line 115
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 123
    .line 124
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->replyResult:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 125
    .line 126
    return-void
.end method


# virtual methods
.method public final expandOrCollapseAll(Z)V
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const v0, 0x7f120694

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lorg/wikipedia/talk/TalkTopicViewModel;->expandOrCollapseAll()Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcoil3/memory/MemoryCacheService;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicActivity;->threadAdapter:Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcoil3/memory/MemoryCacheService;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v2}, Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;->getItemCount()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {v2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final loadTopics()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v2, Lorg/wikipedia/talk/TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-direct {v2, p0, v4}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkTopicViewModel;I)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 44
    .line 45
    invoke-direct {v4, p0, v1, v3}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;-><init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x2

    .line 49
    invoke-static {v0, v2, v1, v4, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c0036

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f090670

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v6, v3

    .line 25
    check-cast v6, Lorg/wikipedia/views/WikiErrorView;

    .line 26
    .line 27
    if-eqz v6, :cond_15

    .line 28
    .line 29
    const v0, 0x7f090676

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v7, v3

    .line 37
    check-cast v7, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 38
    .line 39
    if-eqz v7, :cond_15

    .line 40
    .line 41
    const v0, 0x7f090677

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    move-object v8, v3

    .line 49
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    if-eqz v8, :cond_15

    .line 52
    .line 53
    move-object v5, p1

    .line 54
    check-cast v5, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 55
    .line 56
    const v0, 0x7f0906cb

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    move-object v10, v3

    .line 64
    check-cast v10, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 65
    .line 66
    if-eqz v10, :cond_15

    .line 67
    .line 68
    new-instance v4, Lokhttp3/Request$Builder;

    .line 69
    .line 70
    move-object v9, v5

    .line 71
    invoke-direct/range {v4 .. v10}, Lokhttp3/Request$Builder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 72
    .line 73
    .line 74
    iput-object v4, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 75
    .line 76
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 80
    .line 81
    const-string v0, "binding"

    .line 82
    .line 83
    if-eqz p1, :cond_14

    .line 84
    .line 85
    iget-object p1, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/4 v3, 0x1

    .line 97
    if-eqz p1, :cond_0

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    .line 101
    .line 102
    :cond_0
    const-string p1, ""

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;

    .line 108
    .line 109
    invoke-direct {p1, p0, p0}, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/talk/TalkTopicActivity;)V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->linkHandler:Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;

    .line 113
    .line 114
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    iget-object v4, v4, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 119
    .line 120
    iget-object v4, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iput-object v4, p1, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 126
    .line 127
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 128
    .line 129
    if-eqz p1, :cond_13

    .line 130
    .line 131
    iget-object p1, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    .line 135
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iget-object v4, v4, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 140
    .line 141
    iget-object v4, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 142
    .line 143
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p1, v4}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 149
    .line 150
    if-eqz p1, :cond_12

    .line 151
    .line 152
    iget-object p1, p1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 155
    .line 156
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    iget-object v4, v4, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 161
    .line 162
    iget-object v4, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 163
    .line 164
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {p1, v4}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 170
    .line 171
    if-eqz p1, :cond_11

    .line 172
    .line 173
    iget-object p1, p1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 176
    .line 177
    move v4, v2

    .line 178
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-ge v4, v5, :cond_1

    .line 183
    .line 184
    move v5, v3

    .line 185
    goto :goto_1

    .line 186
    :cond_1
    move v5, v2

    .line 187
    :goto_1
    if-eqz v5, :cond_4

    .line 188
    .line 189
    add-int/lit8 v5, v4, 0x1

    .line 190
    .line 191
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-eqz v4, :cond_3

    .line 196
    .line 197
    instance-of v6, v4, Landroid/widget/TextView;

    .line 198
    .line 199
    if-eqz v6, :cond_2

    .line 200
    .line 201
    check-cast v4, Landroid/widget/TextView;

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_2
    move v4, v5

    .line 205
    goto :goto_0

    .line 206
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 207
    .line 208
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 209
    .line 210
    .line 211
    throw p0

    .line 212
    :cond_4
    move-object v4, v1

    .line 213
    :goto_2
    if-eqz v4, :cond_5

    .line 214
    .line 215
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 216
    .line 217
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 218
    .line 219
    .line 220
    :cond_5
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 221
    .line 222
    if-eqz p1, :cond_10

    .line 223
    .line 224
    iget-object p1, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    .line 228
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 229
    .line 230
    invoke-direct {v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 237
    .line 238
    if-eqz p1, :cond_f

    .line 239
    .line 240
    iget-object p1, p1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 243
    .line 244
    new-instance v4, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda0;

    .line 245
    .line 246
    invoke-direct {v4, p0, v2}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v4}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 253
    .line 254
    if-eqz p1, :cond_e

    .line 255
    .line 256
    iget-object p1, p1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 259
    .line 260
    new-instance v4, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda0;

    .line 261
    .line 262
    invoke-direct {v4, p0, v3}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v4}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 269
    .line 270
    if-eqz p1, :cond_d

    .line 271
    .line 272
    iget-object p1, p1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 275
    .line 276
    new-instance v4, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;

    .line 277
    .line 278
    invoke-direct {v4, p0, v2}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 285
    .line 286
    if-eqz p1, :cond_c

    .line 287
    .line 288
    iget-object p1, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 291
    .line 292
    new-instance v4, Landroidx/recyclerview/widget/FastScroller$2;

    .line 293
    .line 294
    const/4 v5, 0x4

    .line 295
    invoke-direct {v4, v5, p0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(ILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->threadItemsData:Landroidx/lifecycle/MutableLiveData;

    .line 306
    .line 307
    new-instance v4, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;

    .line 308
    .line 309
    invoke-direct {v4, p0, v2}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 310
    .line 311
    .line 312
    new-instance v5, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 313
    .line 314
    const/4 v6, 0x3

    .line 315
    invoke-direct {v5, v4, v6}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, p0, v5}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->subscribeData:Lorg/wikipedia/util/SingleLiveData;

    .line 326
    .line 327
    new-instance v4, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;

    .line 328
    .line 329
    invoke-direct {v4, p0, v3}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 330
    .line 331
    .line 332
    new-instance v3, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 333
    .line 334
    invoke-direct {v3, v4, v6}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, p0, v3}, Lorg/wikipedia/util/SingleLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->undoResponseData:Lorg/wikipedia/util/SingleLiveData;

    .line 345
    .line 346
    new-instance v3, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;

    .line 347
    .line 348
    const/4 v4, 0x2

    .line 349
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V

    .line 350
    .line 351
    .line 352
    new-instance v4, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 353
    .line 354
    invoke-direct {v4, v3, v6}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, p0, v4}, Lorg/wikipedia/util/SingleLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 361
    .line 362
    if-eqz p1, :cond_b

    .line 363
    .line 364
    iget-object p1, p1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 367
    .line 368
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 372
    .line 373
    if-eqz p1, :cond_a

    .line 374
    .line 375
    iget-object p1, p1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 378
    .line 379
    const/16 v0, 0x8

    .line 380
    .line 381
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    new-instance v1, Landroidx/paging/HintHandler;

    .line 396
    .line 397
    invoke-direct {v1, v0}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 398
    .line 399
    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 401
    .line 402
    const/16 v2, 0x23

    .line 403
    .line 404
    if-lt v0, v2, :cond_6

    .line 405
    .line 406
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 407
    .line 408
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 409
    .line 410
    .line 411
    goto :goto_3

    .line 412
    :cond_6
    const/16 v2, 0x1e

    .line 413
    .line 414
    if-lt v0, v2, :cond_7

    .line 415
    .line 416
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 417
    .line 418
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 419
    .line 420
    .line 421
    goto :goto_3

    .line 422
    :cond_7
    const/16 v2, 0x1a

    .line 423
    .line 424
    if-lt v0, v2, :cond_8

    .line 425
    .line 426
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 427
    .line 428
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 429
    .line 430
    .line 431
    goto :goto_3

    .line 432
    :cond_8
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 433
    .line 434
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 435
    .line 436
    .line 437
    :goto_3
    invoke-virtual {v0}, Lcoil3/util/UtilsKt;->hide()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 445
    .line 446
    if-eqz p1, :cond_9

    .line 447
    .line 448
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 449
    .line 450
    if-nez p1, :cond_9

    .line 451
    .line 452
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 453
    .line 454
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 459
    .line 460
    :cond_9
    return-void

    .line 461
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw v1

    .line 465
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v1

    .line 469
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v1

    .line 473
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw v1

    .line 477
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw v1

    .line 481
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw v1

    .line 485
    :cond_10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw v1

    .line 489
    :cond_11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v1

    .line 493
    :cond_12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw v1

    .line 497
    :cond_13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw v1

    .line 501
    :cond_14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v1

    .line 505
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 506
    .line 507
    .line 508
    move-result-object p0

    .line 509
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    const-string p1, "Missing required view with ID: "

    .line 514
    .line 515
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object p0

    .line 519
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
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
    const v0, 0x7f0e0027

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
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v1, 0x7f0903f6

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v0, v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const p1, 0x7f12094e

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object p1, v3

    .line 49
    :cond_1
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object p1, v0, v2

    .line 52
    .line 53
    const p1, 0x7f12095e

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 68
    .line 69
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v3, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 84
    .line 85
    :cond_2
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :try_start_0
    const-string v3, "UTF-8"

    .line 98
    .line 99
    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const-string v3, "+"

    .line 107
    .line 108
    const-string v5, "%20"

    .line 109
    .line 110
    invoke-static {v1, v3, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "#"

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v4

    .line 135
    :catch_0
    move-exception v0

    .line 136
    move-object p0, v0

    .line 137
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    return v2

    .line 141
    :cond_3
    const v1, 0x7f0903a3

    .line 142
    .line 143
    .line 144
    if-ne v0, v1, :cond_4

    .line 145
    .line 146
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object v0, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->threadItems:Ljava/util/ArrayList;

    .line 151
    .line 152
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-object v8, p1, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 166
    .line 167
    sget-object v9, Lorg/wikipedia/Constants$InvokeSource;->TALK_TOPIC_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 168
    .line 169
    const/4 v10, 0x0

    .line 170
    const/16 v11, 0x1e0

    .line 171
    .line 172
    const/4 v7, 0x0

    .line 173
    move-object v5, p0

    .line 174
    invoke-static/range {v5 .. v11}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    iget-object p1, v5, Lorg/wikipedia/talk/TalkTopicActivity;->requestEditSource:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 179
    .line 180
    invoke-virtual {p1, p0, v3}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 181
    .line 182
    .line 183
    return v4

    .line 184
    :cond_4
    move-object v5, p0

    .line 185
    const p0, 0x7f0903f4

    .line 186
    .line 187
    .line 188
    if-ne v0, p0, :cond_5

    .line 189
    .line 190
    invoke-virtual {v5, v4}, Lorg/wikipedia/talk/TalkTopicActivity;->expandOrCollapseAll(Z)V

    .line 191
    .line 192
    .line 193
    return v4

    .line 194
    :cond_5
    const p0, 0x7f0903f3

    .line 195
    .line 196
    .line 197
    if-ne v0, p0, :cond_6

    .line 198
    .line 199
    invoke-virtual {v5, v2}, Lorg/wikipedia/talk/TalkTopicActivity;->expandOrCollapseAll(Z)V

    .line 200
    .line 201
    .line 202
    return v4

    .line 203
    :cond_6
    const p0, 0x7f0903b0

    .line 204
    .line 205
    .line 206
    if-ne v0, p0, :cond_8

    .line 207
    .line 208
    invoke-virtual {v5, v4}, Lorg/wikipedia/talk/TalkTopicActivity;->expandOrCollapseAll(Z)V

    .line 209
    .line 210
    .line 211
    iget-object p0, v5, Lorg/wikipedia/talk/TalkTopicActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 212
    .line 213
    if-nez p0, :cond_7

    .line 214
    .line 215
    iget-object p0, v5, Lorg/wikipedia/talk/TalkTopicActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 216
    .line 217
    invoke-virtual {v5, p0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    iput-object p0, v5, Lorg/wikipedia/talk/TalkTopicActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 222
    .line 223
    :cond_7
    return v4

    .line 224
    :cond_8
    invoke-super {v5, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    return p0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0903b0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v3, v3, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget-object v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v3, v1

    .line 27
    :goto_0
    if-nez v3, :cond_1

    .line 28
    .line 29
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 30
    .line 31
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    xor-int/2addr v3, v2

    .line 36
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 37
    .line 38
    .line 39
    :cond_2
    const v0, 0x7f0903a3

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_4
    if-nez v1, :cond_5

    .line 68
    .line 69
    sget-object v1, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 70
    .line 71
    :cond_5
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const v3, 0x7f0903f3

    .line 80
    .line 81
    .line 82
    const v4, 0x7f0903f4

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    if-eqz v1, :cond_b

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 93
    .line 94
    iget v1, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 95
    .line 96
    if-le v1, v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_9

    .line 111
    .line 112
    :cond_7
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 113
    .line 114
    if-eqz v1, :cond_8

    .line 115
    .line 116
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->flattenedThreadItems:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-ne v0, v1, :cond_8

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_8
    move v2, v5

    .line 134
    :cond_9
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_a

    .line 139
    .line 140
    xor-int/lit8 v1, v2, 0x1

    .line 141
    .line 142
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    .line 144
    .line 145
    :cond_a
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_d

    .line 150
    .line 151
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_b
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_c

    .line 160
    .line 161
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    .line 163
    .line 164
    :cond_c
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_d

    .line 169
    .line 170
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 171
    .line 172
    .line 173
    :cond_d
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    return p0
.end method

.method public final startReplyActivity(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 16

    .line 1
    sget-object v0, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 19
    .line 20
    move-object v3, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v3, v1

    .line 23
    :goto_0
    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->TALK_TOPIC_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 24
    .line 25
    const/4 v14, 0x0

    .line 26
    const/16 v15, 0x1f80

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const-wide/16 v9, 0x0

    .line 30
    .line 31
    const-wide/16 v11, 0x0

    .line 32
    .line 33
    const/4 v13, 0x0

    .line 34
    move-object/from16 v4, p1

    .line 35
    .line 36
    move-object/from16 v6, p2

    .line 37
    .line 38
    move-object/from16 v7, p3

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    move-object/from16 v1, p0

    .line 42
    .line 43
    invoke-static/range {v1 .. v15}, Lorg/wikipedia/talk/UserTalkPopupHelper;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/wikipedia/talk/db/TalkTemplate;JJZZI)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicActivity;->replyResult:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 48
    .line 49
    invoke-virtual {v1, v2, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
