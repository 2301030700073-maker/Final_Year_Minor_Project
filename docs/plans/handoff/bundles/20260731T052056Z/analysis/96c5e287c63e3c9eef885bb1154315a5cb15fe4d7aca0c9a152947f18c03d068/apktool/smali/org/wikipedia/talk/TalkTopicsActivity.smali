.class public final Lorg/wikipedia/talk/TalkTopicsActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0005\u0005\u0006\u0005\u0007\u0008B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/talk/TalkTopicsActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;",
        "<init>",
        "()V",
        "HeaderItemAdapter",
        "HeaderViewHolder",
        "SearchCallback",
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

.field public binding:Landroidx/compose/ui/node/NodeChain;

.field public final concatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

.field public goToTopic:Z

.field public final headerAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

.field public invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field public notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

.field public final requestEditSource:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestGoToTopic:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestLanguageChange:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestNewTopic:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

.field public final talkTopicItemAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v3, Lorg/wikipedia/talk/TalkTopicsViewModel;

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
    new-instance v4, Lorg/wikipedia/talk/TalkTopicsActivity$special$$inlined$viewModels$default$2;

    .line 21
    .line 22
    invoke-direct {v4, p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$special$$inlined$viewModels$default$2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lorg/wikipedia/talk/TalkTopicsActivity$special$$inlined$viewModels$default$2;

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    invoke-direct {v5, p0, v6}, Lorg/wikipedia/talk/TalkTopicsActivity$special$$inlined$viewModels$default$2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3, v4, v0, v5}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 35
    .line 36
    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 37
    .line 38
    new-array v2, v1, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->concatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 44
    .line 45
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 46
    .line 47
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->headerAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 51
    .line 52
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 53
    .line 54
    invoke-direct {v0, p0, v6}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->talkTopicItemAdapter:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderItemAdapter;

    .line 58
    .line 59
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 66
    .line 67
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 68
    .line 69
    const/4 v2, 0x3

    .line 70
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 74
    .line 75
    invoke-direct {v3, p0, v2}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v3, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 83
    .line 84
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->requestLanguageChange:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 85
    .line 86
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 87
    .line 88
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 89
    .line 90
    .line 91
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    const/4 v4, 0x4

    .line 94
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v3, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 102
    .line 103
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->requestNewTopic:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 104
    .line 105
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 106
    .line 107
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 108
    .line 109
    .line 110
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 111
    .line 112
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v3, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 120
    .line 121
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->requestEditSource:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 122
    .line 123
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 124
    .line 125
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 126
    .line 127
    .line 128
    new-instance v1, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 129
    .line 130
    const/4 v2, 0x6

    .line 131
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 139
    .line 140
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->requestGoToTopic:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 141
    .line 142
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final goToPage()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 8
    .line 9
    invoke-static {v1}, Lokhttp3/Headers$Companion;->getNonTalkPageTitle(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/PageTitle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0x1f

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v3, "org.wikipedia.load_in_new_tab"

    .line 25
    .line 26
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-class v3, Lorg/wikipedia/page/PageActivity;

    .line 30
    .line 31
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "org.wikipedia.history.historyentry"

    .line 36
    .line 37
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "title"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 22

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
    const v2, 0x7f0c0037

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
    const v2, 0x7f09066c

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    move-object v11, v3

    .line 27
    check-cast v11, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    if-eqz v11, :cond_e

    .line 30
    .line 31
    const v2, 0x7f09066e

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    move-object v12, v3

    .line 39
    check-cast v12, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    if-eqz v12, :cond_e

    .line 42
    .line 43
    const v2, 0x7f09066f

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    move-object v13, v3

    .line 51
    check-cast v13, Landroid/widget/ScrollView;

    .line 52
    .line 53
    if-eqz v13, :cond_e

    .line 54
    .line 55
    const v2, 0x7f090670

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    move-object v14, v3

    .line 63
    check-cast v14, Lorg/wikipedia/views/WikiErrorView;

    .line 64
    .line 65
    if-eqz v14, :cond_e

    .line 66
    .line 67
    const v2, 0x7f090675

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    move-object v15, v3

    .line 75
    check-cast v15, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 76
    .line 77
    if-eqz v15, :cond_e

    .line 78
    .line 79
    const v2, 0x7f090676

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    move-object/from16 v16, v3

    .line 87
    .line 88
    check-cast v16, Landroid/widget/ProgressBar;

    .line 89
    .line 90
    if-eqz v16, :cond_e

    .line 91
    .line 92
    const v2, 0x7f090677

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    move-object/from16 v17, v3

    .line 100
    .line 101
    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    if-eqz v17, :cond_e

    .line 104
    .line 105
    move-object v10, v0

    .line 106
    check-cast v10, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 107
    .line 108
    const v2, 0x7f09067a

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    move-object/from16 v19, v3

    .line 116
    .line 117
    check-cast v19, Landroid/widget/TextView;

    .line 118
    .line 119
    if-eqz v19, :cond_e

    .line 120
    .line 121
    const v2, 0x7f090683

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 129
    .line 130
    if-eqz v3, :cond_e

    .line 131
    .line 132
    const v2, 0x7f0906cb

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    move-object/from16 v20, v3

    .line 140
    .line 141
    check-cast v20, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 142
    .line 143
    if-eqz v20, :cond_e

    .line 144
    .line 145
    new-instance v9, Landroidx/compose/ui/node/NodeChain;

    .line 146
    .line 147
    const/16 v21, 0x1

    .line 148
    .line 149
    move-object/from16 v18, v10

    .line 150
    .line 151
    invoke-direct/range {v9 .. v21}, Landroidx/compose/ui/node/NodeChain;-><init>(Landroid/view/ViewGroup;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;I)V

    .line 152
    .line 153
    .line 154
    iput-object v9, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 155
    .line 156
    invoke-virtual {v1, v10}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 160
    .line 161
    const-string v9, "binding"

    .line 162
    .line 163
    if-eqz v0, :cond_d

    .line 164
    .line 165
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const/4 v10, 0x1

    .line 177
    if-eqz v0, :cond_0

    .line 178
    .line 179
    invoke-virtual {v0, v10}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 180
    .line 181
    .line 182
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const-string v2, "goToTopic"

    .line 187
    .line 188
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput-boolean v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->goToTopic:Z

    .line 193
    .line 194
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 195
    .line 196
    if-eqz v0, :cond_c

    .line 197
    .line 198
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 201
    .line 202
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 203
    .line 204
    invoke-direct {v2, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 211
    .line 212
    if-eqz v0, :cond_b

    .line 213
    .line 214
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    .line 218
    new-instance v2, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 219
    .line 220
    invoke-direct {v2, v1, v8, v8, v10}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZZ)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 227
    .line 228
    if-eqz v0, :cond_a

    .line 229
    .line 230
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 233
    .line 234
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;

    .line 238
    .line 239
    new-instance v2, Landroid/util/TypedValue;

    .line 240
    .line 241
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    const v4, 0x7f040520

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, v4, v2, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_1

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_1
    move-object v2, v7

    .line 259
    :goto_0
    if-eqz v2, :cond_9

    .line 260
    .line 261
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 262
    .line 263
    const v3, 0x106000b

    .line 264
    .line 265
    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    iget-object v3, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 271
    .line 272
    if-eqz v3, :cond_8

    .line 273
    .line 274
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 275
    .line 276
    move-object v6, v3

    .line 277
    check-cast v6, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 278
    .line 279
    const v3, 0x7f0801c4

    .line 280
    .line 281
    .line 282
    const/4 v5, 0x1

    .line 283
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;-><init>(Landroid/content/Context;IILjava/lang/Integer;ZLandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 284
    .line 285
    .line 286
    iput-boolean v10, v0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeableEnabled:Z

    .line 287
    .line 288
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 289
    .line 290
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 294
    .line 295
    if-eqz v0, :cond_7

    .line 296
    .line 297
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 300
    .line 301
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 302
    .line 303
    .line 304
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 305
    .line 306
    if-eqz v0, :cond_6

    .line 307
    .line 308
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 311
    .line 312
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;

    .line 313
    .line 314
    invoke-direct {v2, v1, v8}, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 321
    .line 322
    if-eqz v0, :cond_5

    .line 323
    .line 324
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 327
    .line 328
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;

    .line 329
    .line 330
    invoke-direct {v2, v1, v10}, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    .line 335
    .line 336
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 337
    .line 338
    if-eqz v0, :cond_4

    .line 339
    .line 340
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 343
    .line 344
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;

    .line 345
    .line 346
    const/4 v3, 0x2

    .line 347
    invoke-direct {v2, v1, v3}, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 354
    .line 355
    if-eqz v0, :cond_3

    .line 356
    .line 357
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 360
    .line 361
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 362
    .line 363
    invoke-direct {v2, v1, v3}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    const-string v2, "invokeSource"

    .line 374
    .line 375
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    .line 383
    .line 384
    iput-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 385
    .line 386
    iget-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 387
    .line 388
    if-eqz v0, :cond_2

    .line 389
    .line 390
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 393
    .line 394
    const/16 v2, 0x8

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    .line 398
    .line 399
    new-instance v0, Lorg/wikipedia/views/NotificationButtonView;

    .line 400
    .line 401
    invoke-direct {v0, v1, v7}, Lorg/wikipedia/views/NotificationButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 402
    .line 403
    .line 404
    iput-object v0, v1, Lorg/wikipedia/talk/TalkTopicsActivity;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 405
    .line 406
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 407
    .line 408
    const v0, 0x7f1205d2

    .line 409
    .line 410
    .line 411
    invoke-static {v0, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 412
    .line 413
    .line 414
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;

    .line 419
    .line 420
    invoke-direct {v2, v1, v7, v8}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;Lkotlin/coroutines/Continuation;I)V

    .line 421
    .line 422
    .line 423
    const/4 v3, 0x3

    .line 424
    invoke-static {v0, v7, v7, v2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkTopicsActivity;->resetViews()V

    .line 428
    .line 429
    .line 430
    return-void

    .line 431
    :cond_2
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    throw v7

    .line 435
    :cond_3
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw v7

    .line 439
    :cond_4
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v7

    .line 443
    :cond_5
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v7

    .line 447
    :cond_6
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v7

    .line 451
    :cond_7
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw v7

    .line 455
    :cond_8
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw v7

    .line 459
    :cond_9
    const-string v0, "Attribute not found; ID=2130969888"

    .line 460
    .line 461
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :cond_a
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v7

    .line 469
    :cond_b
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v7

    .line 473
    :cond_c
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw v7

    .line 477
    :cond_d
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw v7

    .line 481
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    const-string v1, "Missing required view with ID: "

    .line 490
    .line 491
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->goToTopic:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f0e0025

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final onExpiryChanged(Lorg/wikipedia/watchlist/WatchlistExpiry;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-boolean p1, v0, Lorg/wikipedia/talk/TalkTopicsViewModel;->hasWatchlistExpiry:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const v2, 0x7f090398

    .line 9
    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v9, 0x1

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->TALK_TOPICS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v3, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;

    .line 23
    .line 24
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const-string v3, "invokeSource"

    .line 28
    .line 29
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->requestLanguageChange:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v7}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 39
    .line 40
    .line 41
    return v9

    .line 42
    :cond_0
    const v2, 0x7f0903d8

    .line 43
    .line 44
    .line 45
    if-eq v1, v2, :cond_8

    .line 46
    .line 47
    const v2, 0x7f090403

    .line 48
    .line 49
    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_1
    const v2, 0x7f090402

    .line 55
    .line 56
    .line 57
    const-string v3, "title"

    .line 58
    .line 59
    if-ne v1, v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance v2, Landroid/content/Intent;

    .line 71
    .line 72
    const-class v4, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 73
    .line 74
    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    .line 86
    .line 87
    return v9

    .line 88
    :cond_2
    const v2, 0x7f0903f6

    .line 89
    .line 90
    .line 91
    if-ne v1, v2, :cond_3

    .line 92
    .line 93
    const v1, 0x7f12095f

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v2, v2, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 108
    .line 109
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {p0, v1, v2}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return v9

    .line 117
    :cond_3
    const v2, 0x7f090405

    .line 118
    .line 119
    .line 120
    if-ne v1, v2, :cond_5

    .line 121
    .line 122
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    sget-object v6, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 133
    .line 134
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-boolean v5, v0, Lorg/wikipedia/talk/TalkTopicsViewModel;->isWatched:Z

    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {v4}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel;->actionHandler:Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 148
    .line 149
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;

    .line 150
    .line 151
    const/4 v8, 0x0

    .line 152
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/talk/TalkTopicsViewModel$watchOrUnwatch$1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 153
    .line 154
    .line 155
    const/4 v2, 0x2

    .line 156
    invoke-static {v0, v1, v7, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 157
    .line 158
    .line 159
    :cond_4
    return v9

    .line 160
    :cond_5
    const v2, 0x7f0903a3

    .line 161
    .line 162
    .line 163
    if-ne v1, v2, :cond_6

    .line 164
    .line 165
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v3, v1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 170
    .line 171
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->TALK_TOPICS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 172
    .line 173
    const/4 v5, 0x0

    .line 174
    const/16 v6, 0x1e0

    .line 175
    .line 176
    const/4 v1, -0x1

    .line 177
    const/4 v2, 0x0

    .line 178
    move-object v0, p0

    .line 179
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->requestEditSource:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 184
    .line 185
    invoke-virtual {v0, v1, v7}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 186
    .line 187
    .line 188
    return v9

    .line 189
    :cond_6
    const v2, 0x7f090396

    .line 190
    .line 191
    .line 192
    if-ne v1, v2, :cond_7

    .line 193
    .line 194
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    new-instance v2, Landroid/content/Intent;

    .line 204
    .line 205
    const-class v4, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 206
    .line 207
    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 218
    .line 219
    .line 220
    return v9

    .line 221
    :cond_7
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    return v0

    .line 226
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->goToPage()V

    .line 227
    .line 228
    .line 229
    return v9
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->goToTopic:Z

    .line 5
    .line 6
    if-nez v0, :cond_e

    .line 7
    .line 8
    const v0, 0x7f090398

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 20
    .line 21
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    move v1, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v1, v4

    .line 34
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0903d8

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v5, 0x0

    .line 55
    if-eq v1, v2, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->ARCHIVED_TALK_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 62
    .line 63
    if-eq v1, v6, :cond_2

    .line 64
    .line 65
    move v1, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const-string p0, "invokeSource"

    .line 68
    .line 69
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v5

    .line 73
    :cond_2
    move v1, v4

    .line 74
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 75
    .line 76
    .line 77
    const v0, 0x7f090403

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    iget-object v6, v6, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 89
    .line 90
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-ne v6, v2, :cond_3

    .line 95
    .line 96
    move v2, v3

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move v2, v4

    .line 99
    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 107
    .line 108
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 113
    .line 114
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const/16 v2, 0x3a

    .line 119
    .line 120
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-array v2, v3, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v1, v2, v4

    .line 131
    .line 132
    const v1, 0x7f1203eb

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 140
    .line 141
    .line 142
    const v0, 0x7f0903a3

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_4

    .line 150
    .line 151
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    .line 157
    .line 158
    :cond_4
    const v0, 0x7f0903d0

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const v1, 0x7f090405

    .line 166
    .line 167
    .line 168
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_d

    .line 177
    .line 178
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 179
    .line 180
    .line 181
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 182
    .line 183
    const-string v6, "notificationButtonView"

    .line 184
    .line 185
    if-eqz v2, :cond_c

    .line 186
    .line 187
    sget-object v7, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 188
    .line 189
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationUnreadCount()I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    invoke-virtual {v2, v7}, Lorg/wikipedia/views/NotificationButtonView;->setUnreadCount(I)V

    .line 194
    .line 195
    .line 196
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 197
    .line 198
    if-eqz v2, :cond_b

    .line 199
    .line 200
    new-instance v7, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;

    .line 201
    .line 202
    const/4 v8, 0x3

    .line 203
    invoke-direct {v7, p0, v8}, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 210
    .line 211
    if-eqz v2, :cond_a

    .line 212
    .line 213
    const v7, 0x7f12047f

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-virtual {v2, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 224
    .line 225
    if-eqz v2, :cond_9

    .line 226
    .line 227
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 228
    .line 229
    .line 230
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

    .line 234
    .line 235
    if-eqz v0, :cond_8

    .line 236
    .line 237
    new-array v2, v3, [Landroid/view/View;

    .line 238
    .line 239
    aput-object v0, v2, v4

    .line 240
    .line 241
    aget-object v0, v2, v4

    .line 242
    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-static {v0, v2}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkTopicsViewModel;->isWatched:Z

    .line 258
    .line 259
    if-eqz v0, :cond_5

    .line 260
    .line 261
    const v0, 0x7f120400

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_5
    const v0, 0x7f120403

    .line 266
    .line 267
    .line 268
    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 273
    .line 274
    .line 275
    sget-object v0, Lorg/wikipedia/page/action/PageActionItem;->Companion:Lorg/wikipedia/page/action/PageActionItem$Companion;

    .line 276
    .line 277
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    iget-boolean v2, v2, Lorg/wikipedia/talk/TalkTopicsViewModel;->isWatched:Z

    .line 282
    .line 283
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    iget-boolean v3, v3, Lorg/wikipedia/talk/TalkTopicsViewModel;->hasWatchlistExpiry:Z

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    if-eqz v2, :cond_6

    .line 293
    .line 294
    if-nez v3, :cond_6

    .line 295
    .line 296
    const v0, 0x7f0801ea

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_6
    if-nez v2, :cond_7

    .line 301
    .line 302
    const v0, 0x7f080127

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_7
    const v0, 0x7f080126

    .line 307
    .line 308
    .line 309
    :goto_4
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_8
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v5

    .line 321
    :cond_9
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v5

    .line 325
    :cond_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw v5

    .line 329
    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw v5

    .line 333
    :cond_c
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v5

    .line 337
    :cond_d
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    .line 339
    .line 340
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 341
    .line 342
    .line 343
    :goto_5
    invoke-virtual {p0, v4}, Lorg/wikipedia/talk/TalkTopicsActivity;->updateNotificationDot(Z)V

    .line 344
    .line 345
    .line 346
    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 347
    .line 348
    .line 349
    move-result p0

    .line 350
    return p0
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/views/SearchActionProvider;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/views/SearchActionProvider;->binding:Lretrofit2/OkHttpCall$1;

    .line 13
    .line 14
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lorg/wikipedia/views/CabSearchView;

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/views/CabSearchView;->searchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onUnreadNotification()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->updateNotificationDot(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final resetViews()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v3, v3, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 20
    .line 21
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 22
    .line 23
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v3}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroid/widget/ProgressBar;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 47
    .line 48
    const/16 v4, 0x8

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Landroid/widget/ScrollView;

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 65
    .line 66
    if-eqz p0, :cond_0

    .line 67
    .line 68
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v1

    .line 84
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1
.end method

.method public final setToolbarTitle(Lorg/wikipedia/page/PageTitle;)V
    .locals 7

    .line 1
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 14
    .line 15
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lorg/wikipedia/staticdata/TalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ": <a href=\'#\'>"

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, "</a>"

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    if-eqz v0, :cond_a

    .line 66
    .line 67
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    move v3, v2

    .line 73
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const/4 v5, 0x1

    .line 78
    if-ge v3, v4, :cond_1

    .line 79
    .line 80
    move v4, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move v4, v2

    .line 83
    :goto_1
    if-eqz v4, :cond_4

    .line 84
    .line 85
    add-int/lit8 v4, v3, 0x1

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    instance-of v6, v3, Landroid/widget/TextView;

    .line 94
    .line 95
    if-eqz v6, :cond_2

    .line 96
    .line 97
    check-cast v3, Landroid/widget/TextView;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    move v3, v4

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 103
    .line 104
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_4
    move-object v3, v1

    .line 109
    :goto_2
    if-eqz v3, :cond_8

    .line 110
    .line 111
    invoke-virtual {v3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-boolean v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->goToTopic:Z

    .line 115
    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    move v0, v2

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    const/16 v0, 0x8

    .line 121
    .line 122
    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 126
    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->ARCHIVED_TALK_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 130
    .line 131
    if-eq v0, v1, :cond_6

    .line 132
    .line 133
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 134
    .line 135
    new-instance v1, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 136
    .line 137
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    new-array v0, v5, [Landroid/view/View;

    .line 147
    .line 148
    aput-object v3, v0, v2

    .line 149
    .line 150
    aget-object v0, v0, v2

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    const-string p0, "invokeSource"

    .line 161
    .line 162
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    if-eqz p0, :cond_9

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    :cond_9
    return-void

    .line 176
    :cond_a
    const-string p0, "binding"

    .line 177
    .line 178
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v1
.end method

.method public final updateNotificationDot(Z)V
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
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

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
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

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
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->notificationButtonView:Lorg/wikipedia/views/NotificationButtonView;

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

.method public final updateOnEmpty()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/widget/ProgressBar;

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Landroid/widget/ScrollView;

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 52
    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1
.end method
