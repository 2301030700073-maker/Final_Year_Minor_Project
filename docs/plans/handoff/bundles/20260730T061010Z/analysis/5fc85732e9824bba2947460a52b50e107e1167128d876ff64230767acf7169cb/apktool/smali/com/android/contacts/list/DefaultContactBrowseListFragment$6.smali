.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->initSwipeRefreshLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .line 579
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 581
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/SyncUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 584
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->showConnectionErrorMsg()V

    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;)V

    .line 589
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/android/contactsbind/experiments/Flags;->getInstance()Lcom/android/contactsbind/experiments/Flags;

    move-result-object v2

    const-string v3, "PullToRefresh__cancel_refresh_millis"

    .line 590
    invoke-virtual {v2, v3}, Lcom/android/contactsbind/experiments/Flags;->getInteger(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 589
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
