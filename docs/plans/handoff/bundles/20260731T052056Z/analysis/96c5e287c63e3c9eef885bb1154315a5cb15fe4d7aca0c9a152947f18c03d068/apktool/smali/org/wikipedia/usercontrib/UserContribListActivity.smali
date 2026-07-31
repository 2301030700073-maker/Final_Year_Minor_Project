.class public final Lorg/wikipedia/usercontrib/UserContribListActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u00002\u00020\u0001:\u000f\u0004\u0004\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/wikipedia/usercontrib/UserContribListActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "SearchBarAdapter",
        "LoadingItemAdapter",
        "CategoryMemberDiffCallback",
        "CategoryMembersAdapter",
        "LoadingViewHolder",
        "StatsViewHolder",
        "SeparatorViewHolder",
        "SearchBarViewHolder",
        "EmptyMessagesViewHolder",
        "UserContribListItemHolder",
        "SearchCallback",
        "UserContribLinkHandler",
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

.field public binding:Lokhttp3/MultipartBody$Builder;

.field public final launchFilterActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public linkHandler:Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribLinkHandler;

.field public final linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field public final loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public final loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

.field public final searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

.field public final userContribEmptyMessagesAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

.field public final userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

.field public final userContribSearchBarAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

.field public final userContribStatsAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 10
    .line 11
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribStatsAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 18
    .line 19
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribSearchBarAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 26
    .line 27
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribEmptyMessagesAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 34
    .line 35
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 36
    .line 37
    new-instance v4, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda2;

    .line 38
    .line 39
    invoke-direct {v4, p0, v2}, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    invoke-direct {v0, p0, v4, v5}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 47
    .line 48
    new-instance v0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 49
    .line 50
    new-instance v4, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda2;

    .line 51
    .line 52
    invoke-direct {v4, p0, v3}, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p0, v4, v5}, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 59
    .line 60
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListActivity$special$$inlined$viewModels$default$1;

    .line 61
    .line 62
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/usercontrib/UserContribListActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Lokhttp3/Request$Builder;

    .line 66
    .line 67
    const-class v4, Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 68
    .line 69
    sget-object v5, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 70
    .line 71
    invoke-virtual {v5, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    new-instance v5, Lorg/wikipedia/usercontrib/UserContribListActivity$special$$inlined$viewModels$default$1;

    .line 76
    .line 77
    invoke-direct {v5, p0, v3}, Lorg/wikipedia/usercontrib/UserContribListActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lorg/wikipedia/usercontrib/UserContribListActivity$special$$inlined$viewModels$default$1;

    .line 81
    .line 82
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v4, v5, v0, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 89
    .line 90
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 91
    .line 92
    const/4 v1, 0x6

    .line 93
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;-><init>(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 97
    .line 98
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 99
    .line 100
    new-instance v1, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    invoke-direct {v1, p0}, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 109
    .line 110
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 111
    .line 112
    const/4 v1, 0x3

    .line 113
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    invoke-direct {v1, p0}, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 126
    .line 127
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->launchFilterActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

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
    const v0, 0x7f0c0039

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
    const v0, 0x7f090574

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 25
    .line 26
    if-eqz v3, :cond_7

    .line 27
    .line 28
    const v0, 0x7f0906cb

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 36
    .line 37
    if-eqz v4, :cond_7

    .line 38
    .line 39
    const v0, 0x7f090705

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 47
    .line 48
    if-eqz v5, :cond_7

    .line 49
    .line 50
    const v0, 0x7f090706

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    if-eqz v5, :cond_7

    .line 60
    .line 61
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 62
    .line 63
    check-cast p1, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-direct {v0, p1, v3, v4, v5}, Lokhttp3/MultipartBody$Builder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 74
    .line 75
    const-string v0, "binding"

    .line 76
    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    iget-object p1, p1, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_0

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Lcoil3/util/ContextsKt;->setDisplayShowTitleEnabled(Z)V

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/4 v3, 0x1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 103
    .line 104
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iget-object v4, v4, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userName:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    new-array v5, v3, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v4, v5, v2

    .line 117
    .line 118
    const v4, 0x7f1209d4

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {p1, v4}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribLinkHandler;

    .line 129
    .line 130
    invoke-direct {p1, p0, p0}, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribLinkHandler;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lorg/wikipedia/usercontrib/UserContribListActivity;)V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->linkHandler:Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribLinkHandler;

    .line 134
    .line 135
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v4}, Lorg/wikipedia/usercontrib/UserContribListViewModel;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    iput-object v4, p1, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 144
    .line 145
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 146
    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    iget-object p1, p1, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 152
    .line 153
    new-instance v4, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;

    .line 154
    .line 155
    invoke-direct {v4, p0}, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 162
    .line 163
    if-eqz p1, :cond_4

    .line 164
    .line 165
    iget-object p1, p1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    .line 169
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 170
    .line 171
    invoke-direct {v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->setupAdapters$1()V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 181
    .line 182
    if-eqz p1, :cond_3

    .line 183
    .line 184
    iget-object p1, p1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 187
    .line 188
    new-instance v0, Landroidx/recyclerview/widget/FastScroller$2;

    .line 189
    .line 190
    const/4 v3, 0x5

    .line 191
    invoke-direct {v0, v3, p0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 195
    .line 196
    .line 197
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;

    .line 202
    .line 203
    invoke-direct {v0, p0, v1, v2}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lkotlin/coroutines/Continuation;I)V

    .line 204
    .line 205
    .line 206
    const/4 v2, 0x3

    .line 207
    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iget-object p1, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userContribStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 215
    .line 216
    new-instance v0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 217
    .line 218
    const/16 v1, 0x1c

    .line 219
    .line 220
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    new-instance v1, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;

    .line 224
    .line 225
    const/16 v2, 0x8

    .line 226
    .line 227
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-boolean p1, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel;->actionModeActive:Z

    .line 238
    .line 239
    if-eqz p1, :cond_2

    .line 240
    .line 241
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 242
    .line 243
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 248
    .line 249
    :cond_2
    return-void

    .line 250
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v1

    .line 254
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v1

    .line 258
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v1

    .line 262
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v1

    .line 266
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    const-string p1, "Missing required view with ID: "

    .line 275
    .line 276
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-void
.end method

.method public final setupAdapters$1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->loadFooter:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 7
    .line 8
    iget-object v4, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 9
    .line 10
    const-string v5, "binding"

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object p0, v1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->withLoadStateFooter(Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v2

    .line 32
    :cond_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v0, v1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->loadHeader:Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;

    .line 39
    .line 40
    invoke-virtual {v4, v1, v3}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->withLoadStateHeaderAndFooter(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    iget-object v3, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribStatsAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribSearchBarAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 52
    .line 53
    invoke-virtual {v1, v2, p0}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v2
.end method
