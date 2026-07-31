.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

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
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 4
    .line 5
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->clearContents(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    const v0, 0x7f120611

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 37
    .line 38
    .line 39
    sget p1, Lorg/wikipedia/suggestededits/SuggestionsActivity;->$r8$clinit:I

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 46
    .line 47
    invoke-static {p1, v0}, Lokhttp3/Cookie$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 67
    .line 68
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRefresh()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->refreshContents$1()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
