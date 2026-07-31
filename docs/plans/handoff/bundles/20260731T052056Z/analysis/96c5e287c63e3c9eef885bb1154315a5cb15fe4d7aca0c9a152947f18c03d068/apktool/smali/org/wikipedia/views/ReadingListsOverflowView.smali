.class public final Lorg/wikipedia/views/ReadingListsOverflowView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public callback:Ljava/lang/Object;

.field public popupWindowHost:Landroid/widget/PopupWindow;


# virtual methods
.method public dismissPopupWindowHost()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 10
    .line 11
    return-void
.end method

.method public onSelected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView;->callback:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 8
    .line 9
    sget v1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->setupAdapters()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistorySearchBarAdapter:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 30
    .line 31
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->searchActionProvider:Landroidx/core/view/ActionProvider;

    .line 32
    .line 33
    check-cast v0, Lorg/wikipedia/views/SearchAndFilterActionProvider;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lorg/wikipedia/views/SearchAndFilterActionProvider;->updateFilterIconAndText()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/views/ReadingListsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
