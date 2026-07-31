.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 18
    .line 19
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->langCode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->setupAdapters$2()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedRecentEdits:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedUserInfo:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 43
    .line 44
    invoke-virtual {p1}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsSearchBarAdapter:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarAdapter;

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedRecentEdits:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedUserInfo:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedRecentEdits:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->cachedUserInfo:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->recentEditsListAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->refresh()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p1, "pt_filters"

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    const-string v1, "modify_filters_click"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 11
    .line 12
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->launchFilterActivity:Landroidx/fragment/app/Fragment$10;

    .line 13
    .line 14
    sget v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;->$r8$clinit:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
