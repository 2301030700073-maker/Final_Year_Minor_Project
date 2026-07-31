.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/fragments/BackPressable;


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;


# instance fields
.field public _feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

.field public _searchLayoutBinding:Lorg/jsoup/nodes/Printer;

.field public currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

.field public groupIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field public groupId:J

.field public groupSortOrder:J

.field public iconsListState:Landroid/os/Parcelable;

.field public final inputMethodManager$delegate:Lkotlin/SynchronizedLazyImpl;

.field public selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field public selectedSubscriptions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final subscriptionEmptyFooter:Lcom/xwray/groupie/Section;

.field public subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

.field public final subscriptionMainSection:Lcom/xwray/groupie/Section;

.field public final subscriptionPickerItemListener:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;

.field public subscriptionsCurrentSearchQuery:Ljava/lang/String;

.field public subscriptionsListState:Landroid/os/Parcelable;

.field public subscriptionsShowOnlyUngrouped:Z

.field public viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

.field public wasSearchSubscriptionsVisible:Z

.field public wasSubscriptionSelectionChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupSortOrder:J

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 16
    .line 17
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    .line 18
    .line 19
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v0, Lcom/xwray/groupie/Section;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/xwray/groupie/Section;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionMainSection:Lcom/xwray/groupie/Section;

    .line 31
    .line 32
    new-instance v0, Lcom/xwray/groupie/Section;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/xwray/groupie/Section;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionEmptyFooter:Lcom/xwray/groupie/Section;

    .line 38
    .line 39
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionPickerItemListener:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    new-instance v0, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    invoke-direct {v0, p0, v1}, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->inputMethodManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final hideSearch()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->resetSearch()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroid/widget/FrameLayout;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderInfoContainer:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x7f0a004a

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->inputMethodManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 52
    .line 53
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 58
    .line 59
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final isSearchVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final onBackPressed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 2
    .line 3
    instance-of v0, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->isSearchVisible()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideSearch()V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 19
    .line 20
    instance-of v0, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lokio/Options$Companion;->isLightThemeSelected(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const p1, 0x7f140178

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const p1, 0x7f140145

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-wide/16 v0, -0x1

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string v2, "KEY_GROUP_ID"

    .line 36
    .line 37
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    :cond_1
    iput-wide v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    .line 42
    .line 43
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 6
    .line 7
    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onCreateDialog$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onCreateDialog$1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroidx/fragment/app/FragmentActivity;I)V

    .line 10
    .line 11
    .line 12
    return-object v1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0d0036

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 26
    .line 27
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 28
    .line 29
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->isSearchVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSearchSubscriptionsVisible:Z

    .line 9
    .line 10
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v1

    .line 27
    :goto_0
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    .line 28
    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_1
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    .line 47
    .line 48
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v2, 0x7f0a009c

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    move-object v6, v3

    .line 16
    check-cast v6, Landroid/widget/Button;

    .line 17
    .line 18
    if-eqz v6, :cond_e

    .line 19
    .line 20
    const v2, 0x7f0a00c4

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    move-object v7, v3

    .line 28
    check-cast v7, Landroid/widget/Button;

    .line 29
    .line 30
    if-eqz v7, :cond_e

    .line 31
    .line 32
    const v2, 0x7f0a00e9

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    move-object v8, v3

    .line 40
    check-cast v8, Landroid/widget/ImageButton;

    .line 41
    .line 42
    if-eqz v8, :cond_e

    .line 43
    .line 44
    const v2, 0x7f0a00eb

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    move-object v9, v3

    .line 52
    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 53
    .line 54
    if-eqz v9, :cond_e

    .line 55
    .line 56
    const v2, 0x7f0a01b7

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    move-object v10, v3

    .line 64
    check-cast v10, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 65
    .line 66
    if-eqz v10, :cond_e

    .line 67
    .line 68
    const v2, 0x7f0a01b8

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    move-object v11, v3

    .line 76
    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    .line 77
    .line 78
    if-eqz v11, :cond_e

    .line 79
    .line 80
    const v2, 0x7f0a01d0

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    move-object v12, v3

    .line 88
    check-cast v12, Landroid/widget/ImageButton;

    .line 89
    .line 90
    if-eqz v12, :cond_e

    .line 91
    .line 92
    const v2, 0x7f0a01d1

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    move-object v13, v3

    .line 100
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    if-eqz v13, :cond_e

    .line 103
    .line 104
    const v2, 0x7f0a02be

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    move-object v14, v3

    .line 112
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 113
    .line 114
    if-eqz v14, :cond_e

    .line 115
    .line 116
    const v2, 0x7f0a0360

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    move-object v15, v3

    .line 124
    check-cast v15, Landroid/widget/Button;

    .line 125
    .line 126
    if-eqz v15, :cond_e

    .line 127
    .line 128
    const v2, 0x7f0a0365

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    move-object/from16 v16, v3

    .line 136
    .line 137
    check-cast v16, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 138
    .line 139
    if-eqz v16, :cond_e

    .line 140
    .line 141
    const v2, 0x7f0a0367

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v17

    .line 148
    if-eqz v17, :cond_e

    .line 149
    .line 150
    const v2, 0x7f0a03aa

    .line 151
    .line 152
    .line 153
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    move-object/from16 v18, v3

    .line 158
    .line 159
    check-cast v18, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 160
    .line 161
    if-eqz v18, :cond_e

    .line 162
    .line 163
    const v2, 0x7f0a03ab

    .line 164
    .line 165
    .line 166
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    move-object/from16 v19, v3

    .line 171
    .line 172
    check-cast v19, Landroid/widget/LinearLayout;

    .line 173
    .line 174
    if-eqz v19, :cond_e

    .line 175
    .line 176
    const v2, 0x7f0a03ac

    .line 177
    .line 178
    .line 179
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    if-eqz v3, :cond_e

    .line 184
    .line 185
    invoke-static {v3}, Lorg/jsoup/nodes/Printer;->bind$1(Landroid/view/View;)Lorg/jsoup/nodes/Printer;

    .line 186
    .line 187
    .line 188
    move-result-object v20

    .line 189
    const v2, 0x7f0a03ad

    .line 190
    .line 191
    .line 192
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    move-object/from16 v21, v3

    .line 197
    .line 198
    check-cast v21, Landroidx/appcompat/widget/Toolbar;

    .line 199
    .line 200
    if-eqz v21, :cond_e

    .line 201
    .line 202
    const v2, 0x7f0a03ae

    .line 203
    .line 204
    .line 205
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    move-object/from16 v22, v3

    .line 210
    .line 211
    check-cast v22, Landroid/widget/LinearLayout;

    .line 212
    .line 213
    if-eqz v22, :cond_e

    .line 214
    .line 215
    const v2, 0x7f0a03af

    .line 216
    .line 217
    .line 218
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    move-object/from16 v23, v3

    .line 223
    .line 224
    check-cast v23, Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    .line 226
    if-eqz v23, :cond_e

    .line 227
    .line 228
    new-instance v4, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 229
    .line 230
    move-object v5, v1

    .line 231
    check-cast v5, Landroid/widget/LinearLayout;

    .line 232
    .line 233
    invoke-direct/range {v4 .. v23}, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ImageButton;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/jsoup/nodes/Printer;Landroidx/appcompat/widget/Toolbar;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 234
    .line 235
    .line 236
    move-object/from16 v1, v20

    .line 237
    .line 238
    iput-object v4, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 239
    .line 240
    iput-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 241
    .line 242
    sget-object v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    iget-wide v4, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    .line 252
    .line 253
    iget-object v6, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 254
    .line 255
    iget-boolean v7, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    new-instance v1, Landroidx/work/Data$Builder;

    .line 264
    .line 265
    const/4 v8, 0x2

    .line 266
    invoke-direct {v1, v8}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 267
    .line 268
    .line 269
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;

    .line 270
    .line 271
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    const-class v3, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 275
    .line 276
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v1, v4, v2}, Landroidx/work/Data$Builder;->addInitializer(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelCreationExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    new-instance v5, Lokhttp3/Dispatcher;

    .line 302
    .line 303
    invoke-direct {v5, v2, v1, v4}, Lokhttp3/Dispatcher;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 304
    .line 305
    .line 306
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    if-eqz v2, :cond_d

    .line 315
    .line 316
    const-string v3, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 317
    .line 318
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v5, v2, v1}, Lokhttp3/Dispatcher;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    check-cast v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 327
    .line 328
    iput-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 329
    .line 330
    iget-object v1, v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->groupLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 331
    .line 332
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    new-instance v3, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;

    .line 337
    .line 338
    const/4 v4, 0x1

    .line 339
    invoke-direct {v3, v0, v4}, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;-><init>(Ljava/lang/Object;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 346
    .line 347
    const-string/jumbo v2, "viewModel"

    .line 348
    .line 349
    .line 350
    const/4 v3, 0x0

    .line 351
    if-eqz v1, :cond_c

    .line 352
    .line 353
    iget-object v1, v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->subscriptionsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 354
    .line 355
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    new-instance v6, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;

    .line 360
    .line 361
    const/4 v7, 0x0

    .line 362
    invoke-direct {v6, v0, v7}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 363
    .line 364
    .line 365
    new-instance v9, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;

    .line 366
    .line 367
    invoke-direct {v9, v6, v4}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v5, v9}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 371
    .line 372
    .line 373
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 374
    .line 375
    if-eqz v1, :cond_b

    .line 376
    .line 377
    iget-object v1, v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->dialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 378
    .line 379
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    new-instance v5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;

    .line 384
    .line 385
    invoke-direct {v5, v0, v4}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 386
    .line 387
    .line 388
    new-instance v6, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;

    .line 389
    .line 390
    invoke-direct {v6, v5, v4}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v2, v6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 394
    .line 395
    .line 396
    new-instance v1, Lcom/xwray/groupie/GroupieAdapter;

    .line 397
    .line 398
    invoke-direct {v1}, Lcom/xwray/groupie/GroupAdapter;-><init>()V

    .line 399
    .line 400
    .line 401
    iget-object v2, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionMainSection:Lcom/xwray/groupie/Section;

    .line 402
    .line 403
    invoke-virtual {v1, v2}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 404
    .line 405
    .line 406
    iget-object v2, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionEmptyFooter:Lcom/xwray/groupie/Section;

    .line 407
    .line 408
    invoke-virtual {v1, v2}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 409
    .line 410
    .line 411
    const/4 v2, 0x4

    .line 412
    iput v2, v1, Lcom/xwray/groupie/GroupAdapter;->spanCount:I

    .line 413
    .line 414
    iput-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 415
    .line 416
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 417
    .line 418
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    .line 422
    .line 423
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 424
    .line 425
    .line 426
    iget-object v5, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 427
    .line 428
    const-string/jumbo v6, "subscriptionGroupAdapter"

    .line 429
    .line 430
    .line 431
    if-eqz v5, :cond_a

    .line 432
    .line 433
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 434
    .line 435
    .line 436
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 437
    .line 438
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    iget-object v10, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 443
    .line 444
    if-eqz v10, :cond_9

    .line 445
    .line 446
    iget v10, v10, Lcom/xwray/groupie/GroupAdapter;->spanCount:I

    .line 447
    .line 448
    invoke-direct {v5, v9, v10, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;II)V

    .line 449
    .line 450
    .line 451
    iget-object v9, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 452
    .line 453
    if-eqz v9, :cond_8

    .line 454
    .line 455
    iget-object v9, v9, Lcom/xwray/groupie/GroupAdapter;->spanSizeLookup:Lcom/xwray/groupie/GroupAdapter$2;

    .line 456
    .line 457
    iput-object v9, v5, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/core/app/NotificationCompat$Style;

    .line 458
    .line 459
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 460
    .line 461
    .line 462
    new-instance v1, Lcom/xwray/groupie/GroupieAdapter;

    .line 463
    .line 464
    invoke-direct {v1}, Lcom/xwray/groupie/GroupAdapter;-><init>()V

    .line 465
    .line 466
    .line 467
    new-instance v5, Ljava/util/ArrayList;

    .line 468
    .line 469
    const/16 v9, 0xa

    .line 470
    .line 471
    sget-object v10, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 472
    .line 473
    invoke-static {v10, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 474
    .line 475
    .line 476
    move-result v9

    .line 477
    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v10}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 485
    .line 486
    .line 487
    move-result v10

    .line 488
    if-eqz v10, :cond_0

    .line 489
    .line 490
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    check-cast v10, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 495
    .line 496
    new-instance v11, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;

    .line 497
    .line 498
    invoke-direct {v11, v10}, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;-><init>(Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {v1, v5}, Lcom/xwray/groupie/GroupAdapter;->addAll(Ljava/util/Collection;)V

    .line 506
    .line 507
    .line 508
    iget-object v5, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 509
    .line 510
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    iget-object v5, v5, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 514
    .line 515
    new-instance v9, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 516
    .line 517
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 518
    .line 519
    .line 520
    move-result-object v10

    .line 521
    const/4 v11, 0x7

    .line 522
    invoke-direct {v9, v10, v11, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;II)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 529
    .line 530
    .line 531
    iget-object v9, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    .line 532
    .line 533
    if-eqz v9, :cond_2

    .line 534
    .line 535
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    if-eqz v5, :cond_1

    .line 540
    .line 541
    iget-object v9, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    .line 542
    .line 543
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 544
    .line 545
    .line 546
    :cond_1
    iput-object v3, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    .line 547
    .line 548
    :cond_2
    new-instance v5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;

    .line 549
    .line 550
    invoke-direct {v5, v0, v4}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 551
    .line 552
    .line 553
    iput-object v5, v1, Lcom/xwray/groupie/GroupAdapter;->onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 554
    .line 555
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 556
    .line 557
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconPreview:Landroid/widget/ImageButton;

    .line 561
    .line 562
    new-instance v5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;

    .line 563
    .line 564
    const/4 v9, 0x3

    .line 565
    invoke-direct {v5, v0, v9}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    .line 570
    .line 571
    iget-wide v9, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    .line 572
    .line 573
    const-wide/16 v11, -0x1

    .line 574
    .line 575
    cmp-long v1, v9, v11

    .line 576
    .line 577
    if-nez v1, :cond_4

    .line 578
    .line 579
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 580
    .line 581
    if-nez v1, :cond_3

    .line 582
    .line 583
    sget-object v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->ALL:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 584
    .line 585
    :cond_3
    iget-object v5, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 586
    .line 587
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    iget-object v5, v5, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconPreview:Landroid/widget/ImageButton;

    .line 591
    .line 592
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableRes()I

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 597
    .line 598
    .line 599
    :cond_4
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 600
    .line 601
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->deleteButton:Landroid/widget/ImageButton;

    .line 605
    .line 606
    new-instance v5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;

    .line 607
    .line 608
    invoke-direct {v5, v0, v7}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    .line 613
    .line 614
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 615
    .line 616
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->cancelButton:Landroid/widget/Button;

    .line 620
    .line 621
    new-instance v5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;

    .line 622
    .line 623
    invoke-direct {v5, v0, v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    .line 628
    .line 629
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 630
    .line 631
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 635
    .line 636
    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 637
    .line 638
    .line 639
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 640
    .line 641
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 645
    .line 646
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;

    .line 647
    .line 648
    invoke-direct {v2, v0, v7}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 652
    .line 653
    .line 654
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 655
    .line 656
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->confirmButton:Landroid/widget/Button;

    .line 660
    .line 661
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;

    .line 662
    .line 663
    const/4 v5, 0x5

    .line 664
    invoke-direct {v2, v0, v5}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    .line 669
    .line 670
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 671
    .line 672
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->selectChannelButton:Landroid/widget/Button;

    .line 676
    .line 677
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;

    .line 678
    .line 679
    const/4 v5, 0x6

    .line 680
    invoke-direct {v2, v0, v5}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    .line 685
    .line 686
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 687
    .line 688
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    .line 690
    .line 691
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 692
    .line 693
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    const v5, 0x7f0f0007

    .line 706
    .line 707
    .line 708
    invoke-virtual {v2, v5, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 709
    .line 710
    .line 711
    const v2, 0x7f0a004a

    .line 712
    .line 713
    .line 714
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    new-instance v5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;

    .line 719
    .line 720
    invoke-direct {v5, v0, v7}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 721
    .line 722
    .line 723
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 724
    .line 725
    .line 726
    const v2, 0x7f0a0193

    .line 727
    .line 728
    .line 729
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    iget-boolean v2, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    .line 734
    .line 735
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 736
    .line 737
    .line 738
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;

    .line 739
    .line 740
    invoke-direct {v2, v0, v4}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 741
    .line 742
    .line 743
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 744
    .line 745
    .line 746
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 747
    .line 748
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast v1, Landroid/widget/FrameLayout;

    .line 754
    .line 755
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;

    .line 756
    .line 757
    invoke-direct {v2, v0, v4}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    .line 762
    .line 763
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 764
    .line 765
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 769
    .line 770
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 771
    .line 772
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;

    .line 773
    .line 774
    invoke-direct {v2, v0, v8}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    .line 779
    .line 780
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 781
    .line 782
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 786
    .line 787
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 788
    .line 789
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;

    .line 790
    .line 791
    invoke-direct {v2, v0, v4}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;I)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 795
    .line 796
    .line 797
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 798
    .line 799
    if-eqz v1, :cond_7

    .line 800
    .line 801
    iget-object v2, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionPickerItemListener:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;

    .line 802
    .line 803
    iput-object v2, v1, Lcom/xwray/groupie/GroupAdapter;->onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 804
    .line 805
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 806
    .line 807
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 808
    .line 809
    .line 810
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 811
    .line 812
    sget-object v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;

    .line 813
    .line 814
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v1

    .line 818
    if-eqz v1, :cond_5

    .line 819
    .line 820
    iget-boolean v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSearchSubscriptionsVisible:Z

    .line 821
    .line 822
    if-eqz v1, :cond_5

    .line 823
    .line 824
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showSearch()V

    .line 825
    .line 826
    .line 827
    return-void

    .line 828
    :cond_5
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 829
    .line 830
    sget-object v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    .line 831
    .line 832
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 833
    .line 834
    .line 835
    move-result v1

    .line 836
    if-eqz v1, :cond_6

    .line 837
    .line 838
    iget-wide v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    .line 839
    .line 840
    cmp-long v1, v1, v11

    .line 841
    .line 842
    if-nez v1, :cond_6

    .line 843
    .line 844
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 845
    .line 846
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 847
    .line 848
    .line 849
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 850
    .line 851
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    if-eqz v1, :cond_6

    .line 856
    .line 857
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->inputMethodManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 858
    .line 859
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 864
    .line 865
    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 866
    .line 867
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 868
    .line 869
    .line 870
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 871
    .line 872
    invoke-virtual {v1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 873
    .line 874
    .line 875
    :cond_6
    return-void

    .line 876
    :cond_7
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    throw v3

    .line 880
    :cond_8
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    throw v3

    .line 884
    :cond_9
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    throw v3

    .line 888
    :cond_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    throw v3

    .line 892
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    throw v3

    .line 896
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    throw v3

    .line 900
    :cond_d
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 901
    .line 902
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    return-void

    .line 906
    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    const-string v1, "Missing required view with ID: "

    .line 915
    .line 916
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    return-void
.end method

.method public final varargs onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 2
    .line 3
    invoke-static {p2, p0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p0, 0x8

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final resetSearch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->filterSubscriptions:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string/jumbo p0, "viewModel"

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    throw p0
.end method

.method public final showKeyboardSearch$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->inputMethodManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 17
    .line 18
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 23
    .line 24
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->optionsRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v1, v0, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    sget-object v3, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    .line 15
    .line 16
    aput-object v3, v1, v2

    .line 17
    .line 18
    invoke-virtual {p0, p1, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    new-array v1, v0, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 29
    .line 30
    sget-object v4, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;

    .line 31
    .line 32
    aput-object v4, v1, v2

    .line 33
    .line 34
    invoke-virtual {p0, p1, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelector:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    new-array v1, v0, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 45
    .line 46
    sget-object v5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;

    .line 47
    .line 48
    aput-object v5, v1, v2

    .line 49
    .line 50
    invoke-virtual {p0, p1, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->deleteScreenMessage:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 59
    .line 60
    new-array v1, v0, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 61
    .line 62
    sget-object v6, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$DeleteScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$DeleteScreen;

    .line 63
    .line 64
    aput-object v6, v1, v2

    .line 65
    .line 66
    invoke-virtual {p0, p1, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->separator:Landroid/view/View;

    .line 75
    .line 76
    const/4 v1, 0x2

    .line 77
    new-array v7, v1, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 78
    .line 79
    aput-object v5, v7, v2

    .line 80
    .line 81
    aput-object v4, v7, v0

    .line 82
    .line 83
    invoke-virtual {p0, p1, v7}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->cancelButton:Landroid/widget/Button;

    .line 92
    .line 93
    new-array v4, v1, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 94
    .line 95
    aput-object v3, v4, v2

    .line 96
    .line 97
    aput-object v6, v4, v0

    .line 98
    .line 99
    invoke-virtual {p0, p1, v4}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->confirmButton:Landroid/widget/Button;

    .line 108
    .line 109
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 110
    .line 111
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const-wide/16 v4, -0x1

    .line 116
    .line 117
    if-eqz v0, :cond_0

    .line 118
    .line 119
    iget-wide v6, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    .line 120
    .line 121
    cmp-long v0, v6, v4

    .line 122
    .line 123
    if-nez v0, :cond_0

    .line 124
    .line 125
    const v0, 0x7f1300ca

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    const v0, 0x7f130397

    .line 130
    .line 131
    .line 132
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->deleteButton:Landroid/widget/ImageButton;

    .line 141
    .line 142
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 143
    .line 144
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_1

    .line 149
    .line 150
    iget-wide v6, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    .line 151
    .line 152
    cmp-long v0, v6, v4

    .line 153
    .line 154
    if-nez v0, :cond_2

    .line 155
    .line 156
    :cond_1
    const/16 v2, 0x8

    .line 157
    .line 158
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->inputMethodManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 162
    .line 163
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 168
    .line 169
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideSearch()V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public final showSearch()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderInfoContainer:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v2, 0x7f0a004a

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showKeyboardSearch$1()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final updateSubscriptionSelectedCount()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v2, v3, v4

    .line 20
    .line 21
    const v2, 0x7f110006

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->selectedSubscriptionCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderInfo:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
