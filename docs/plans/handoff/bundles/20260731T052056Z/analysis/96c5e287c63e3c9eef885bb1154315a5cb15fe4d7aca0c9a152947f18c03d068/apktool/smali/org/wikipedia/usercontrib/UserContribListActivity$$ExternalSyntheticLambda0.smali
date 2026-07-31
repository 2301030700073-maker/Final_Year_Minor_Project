.class public final synthetic Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/usercontrib/UserContribListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/usercontrib/UserContribListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    sget v0, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 20
    .line 21
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterLangCode()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel;->langCode:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 36
    .line 37
    new-instance v2, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 38
    .line 39
    const/16 v3, 0x13

    .line 40
    .line 41
    invoke-direct {v2, v1, v3}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-direct {v1, v3, p1, v4}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x2

    .line 51
    invoke-static {v0, v2, v4, v1, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->setupAdapters$1()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p1, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel;->cachedContribs:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribSearchBarAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->cachedContribs:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onUrlClick(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->linkHandler:Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribLinkHandler;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribLinkHandler;->lastX:I

    .line 10
    .line 11
    iput p2, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$UserContribLinkHandler;->lastY:I

    .line 12
    .line 13
    invoke-virtual {p0, p3, p4, p5}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "linkHandler"

    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 2

    .line 24
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->launchFilterActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 25
    sget-object v0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->NAMESPACE_LIST:Ljava/util/List;

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x0

    .line 27
    invoke-virtual {p1, v0, p0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    return-void
.end method
