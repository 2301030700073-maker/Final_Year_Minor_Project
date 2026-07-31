.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, ""

    .line 5
    .line 6
    const-string v2, "pt_recent_changes"

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string p1, "filters_init"

    .line 14
    .line 15
    invoke-static {p1, v2, v1}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->launchFilterActivity:Landroidx/fragment/app/Fragment$10;

    .line 19
    .line 20
    sget v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;->$r8$clinit:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v1, Landroid/content/Intent;

    .line 27
    .line 28
    const-class v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 29
    .line 30
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    const-string p1, "search_click"

    .line 38
    .line 39
    invoke-static {p1, v2, v1}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    sget p1, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
