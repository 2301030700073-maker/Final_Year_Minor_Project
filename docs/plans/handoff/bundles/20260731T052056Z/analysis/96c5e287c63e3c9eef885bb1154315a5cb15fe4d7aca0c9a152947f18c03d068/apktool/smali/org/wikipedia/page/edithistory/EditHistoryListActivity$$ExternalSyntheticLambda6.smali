.class public final synthetic Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->cachedRevisions:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->showFilterOverflowMenu()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
